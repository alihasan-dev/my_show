import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/entities/profile_external_id_entity.dart';
import '../widgets/profile_id_widget.dart';
import '../widgets/profile_info_title.dart';
import '../provider/credit_tv_provider.dart';
import '../widgets/profile_shimmer_loader.dart';
import '../provider/credit_movies_provider.dart';
import '../provider/profile_details_provider.dart';
import '../provider/profile_external_id_provider.dart';
import '../../domain/entities/profile_details_entity.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/widgets/label_chip_widget.dart';
import '../../../../core/widgets/movie_cast_banner.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/custom_sliver_app_bar.dart';
import '../../../../features/profile/presentation/widgets/profile_age_widget.dart';
class ProfileScreen extends HookConsumerWidget {

  final String userId;
  const ProfileScreen({required this.userId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).textTheme;
    final readMoreEnable = useState<bool>(false);
    final creditMoviesData = ref.watch(movieCreditDataProvider(userId));
    final creditTvData = ref.watch(tvCreditDataProvider(userId));
    final profileDetails = ref.watch(profileDetailsProvider(userId));
    final profileExternalIds = ref.watch(profileExternalIdProvider(userId));
    final creditMovieList = creditMoviesData.asData?.value.castEntity ?? [];
    final creditTvList = creditTvData.asData?.value.castEntity ?? [];
    final externalIds = profileExternalIds.asData?.value;

    creditMovieList.sort((a, b) {
      if ((a.releaseDate ?? '').isBlank && (b.releaseDate ?? '').isBlank) return 0;
      if ((a.releaseDate ?? '').isBlank) return 1;
      if ((b.releaseDate ?? '').isBlank) return -1;
      final first = DateTime.tryParse(a.releaseDate!);
      final second = DateTime.tryParse(b.releaseDate!);
      // Invalid dates also go to the end
      if (first == null && second == null) return 0;
      if (first == null) return 1;
      if (second == null) return -1;
      return second.compareTo(first);
    });

    creditTvList.sort((a, b) {
      if ((a.releaseDate ?? '').isBlank && (b.releaseDate ?? '').isBlank) return 0;
      if ((a.releaseDate ?? '').isBlank) return 1;
      if ((b.releaseDate ?? '').isBlank) return -1;
      final first = DateTime.tryParse(a.releaseDate!);
      final second = DateTime.tryParse(b.releaseDate!);
      // Invalid dates also go to the end
      if (first == null && second == null) return 0;
      if (first == null) return 1;
      if (second == null) return -1;
      return second.compareTo(first);
    });

    return Scaffold(
      body: SafeArea(
        top: false,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final screenType = constraints.maxWidth.screenType;
            final mobileView = screenType == ScreenType.mobile || screenType == ScreenType.tablet;
            return profileDetails.when(
              data: (data) {
                return CustomScrollView(
                  slivers: [
                    if (mobileView) ...[
                    CustomSliverAppBar(
                      expandedHeight: MediaQuery.of(context).size.height * 0.52,
                      title: data.name ?? '',
                      imagePath: (data.profilePath ?? '').generateImageURL,
                    ),
                    ] else ...[
                      SliverToBoxAdapter(
                        child: ProfileWidgetWeb(
                          profileData: data,
                          id: userId,
                          externalIds: externalIds,
                        ),
                      ),
                    ],
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (mobileView) ... [
                              MovieText(
                                title: data.name ?? '',
                                style: theme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: MovieColors.textPrimary,
                                ),
                              ),
                              SizedBox(height: 12),
                              if (!(data.biography ?? '').isBlank) ...[
                                MovieText(
                                  title: AppStrings.biography,
                                  style: theme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: MovieColors.textPrimary,
                                  ),
                                ),
                                SizedBox(height: 5),
                                MovieText(
                                  title: data.biography ?? '',
                                  maxLine: readMoreEnable.value ? null : 4,
                                  overflow: readMoreEnable.value
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                                ),
                                if ((data.biography ?? '').length > 190)
                                  MovieText(
                                    onTap: () => readMoreEnable.value = !readMoreEnable.value,
                                    title: readMoreEnable.value
                                    ? AppStrings.readLess
                                    : AppStrings.readMore,
                                    style: theme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: MovieColors.primaryColor,
                                    ),
                                  ),
                              ],
                            ],
                            if (creditMovieList.isNotEmpty) ...[
                              SizedBox(height: 10),
                              MovieText(
                                title: AppStrings.knownForMovies,
                                style: theme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: MovieColors.textPrimary,
                                ),
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                height: 230,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: creditMovieList.length,
                                  separatorBuilder: (_, _) => SizedBox(
                                    width: screenType == ScreenType.mobile
                                    ? 4
                                    : 12
                                  ),
                                  itemBuilder: (_, index) {
                                    final cast = creditMovieList[index];
                                    return MovieCastBanner(
                                      onTap: () => context.pushNamed(
                                        AppRoutes.movieDetails,
                                        queryParameters: {
                                          'id': cast.id.toString(),
                                          'type': 'movie',
                                        },
                                      ),
                                      title: cast.title ?? '',
                                      subTitle: cast.character ?? '',
                                      imagePath: (cast.posterPath ?? '').generateImageURL,
                                      radius: 6,
                                    );
                                  },
                                ),
                              ),
                            ],
                            if (creditTvList.isNotEmpty) ...[
                              SizedBox(height: 10),
                              MovieText(
                                title: AppStrings.knownForTv,
                                style: theme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: MovieColors.textPrimary,
                                ),
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                height: 230,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: creditTvList.length,
                                  separatorBuilder: (_, _) => SizedBox(
                                    width: screenType == ScreenType.mobile
                                    ? 4
                                    : 12
                                  ),
                                  itemBuilder: (_, index) {
                                    final cast = creditTvList[index];
                                    return MovieCastBanner(
                                      onTap: () => context.pushNamed(
                                        AppRoutes.movieDetails,
                                        queryParameters: {
                                          'id': cast.id.toString(),
                                          'type': 'tv',
                                        },
                                      ),
                                      title: cast.title ?? '',
                                      subTitle: cast.character ?? '',
                                      imagePath: (cast.posterPath ?? '').generateImageURL,
                                      radius: 6,
                                    );
                                  },
                                ),
                              ),
                            ],
                            Container(
                              decoration: BoxDecoration(
                                color: MovieColors.grey.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Theme(
                                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                child: ExpansionTile(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  title: MovieText(
                                    title: AppStrings.personalInfo,
                                    style: theme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: MovieColors.textPrimary,
                                    ),
                                  ),
                                  initiallyExpanded: true,
                                  tilePadding: EdgeInsets.symmetric(horizontal: 15),
                                  childrenPadding: EdgeInsets.symmetric(horizontal: 15),
                                  children: [
                                    if (!(data.knownFor ?? '').isBlank)
                                      ProfileInfoTitle(
                                        title: AppStrings.knownFor,
                                        value: data.knownFor ?? '',
                                      ),
                                    if (data.gender != null)
                                      ProfileInfoTitle(
                                        title: AppStrings.gender,
                                        value: data.gender!.parseGender,
                                      ),
                                    if (!(data.birthday ?? '').isBlank)
                                      ProfileInfoTitle(
                                        title: AppStrings.birthday,
                                        value: data.birthday!.formatDOB(
                                          hideYrs: (data.deathDay ?? '').isNotEmpty,
                                        ),
                                      ),
                                    if (!(data.deathDay ?? '').isBlank)
                                      ProfileInfoTitle(
                                        title: AppStrings.dayOfDeath,
                                        value: data.deathDay!.formatDOB(),
                                      ),
                                    if (!(data.birthPlace ?? '').isBlank)
                                      ProfileInfoTitle(
                                        title: AppStrings.placeOfBirth,
                                        value: data.birthPlace ?? '',
                                      ),
                                    if ((data.alsoKnownAs ?? []).isNotEmpty)
                                      ProfileInfoTitle(
                                        title: AppStrings.alsoKnownAs,
                                        value: data.alsoKnownAs?.fold('', (previousValue, element) {
                                          if (previousValue!.toString().isBlank) {
                                            return element;
                                          }
                                          return '${previousValue.toString()}\n$element';
                                        }) ?? '',
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              error: (_, _) => Center(child: MovieText(title: AppStrings.noDataAvailable)),
              loading: () => ProfileShimmerLoader(screenType: screenType),
            );
          }
        ),
      ),
    );
  }
}


class ProfileWidgetWeb extends HookConsumerWidget {

  final ProfileDetailsEntity profileData;
  final String id;
  final ProfileExternalIdEntity? externalIds; 

  const ProfileWidgetWeb({
    super.key, 
    required this.profileData,
    this.id = '',
    this.externalIds
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final screenType = width.screenType;

        final horizontalPadding = screenType == ScreenType.mobile
        ? 20.0
        : screenType == ScreenType.tablet
            ? 20.0
            : (width * 0.043).clamp(20.0, 30.0);

        final heroHeight = screenType == ScreenType.tablet
        ? 410.0
        : 460.0;

        return SizedBox(
          width: double.infinity,
          height: heroHeight,
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Background image
              MovieImageWidget(
                imagePath: (profileData.profilePath ?? '').generateImageURL,
                radius: 0,
              ),
              // Left-to-right gradient
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xF2121212),
                      Color(0xD9121212),
                      Color(0x88121212),
                      Color(0x18121212)
                    ],
                    stops: [0.0, 0.38, 0.67, 1.0],
                  ),
                ),
              ),
              // Bottom gradient
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xD9121212),
                      Color(0x00121212)
                    ],
                  ),
                ),
              ),
              // Keep your existing foreground content here.
              Padding(
                padding: EdgeInsets.fromLTRB(
                  horizontalPadding  - 8,
                  screenType == ScreenType.mobile ? 20 : 30,
                  horizontalPadding,
                  28,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: screenType == ScreenType.mobile ? 560 : width,
                    ),
                    child: buildMovieContent(
                      context: context,
                      isMobile: screenType == ScreenType.mobile,
                      isTablet: screenType == ScreenType.tablet,
                      theme: theme
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }


  Widget buildMovieContent({
    required BuildContext context,
    required bool isMobile,
    required bool isTablet,
    required ThemeData theme
  }) {
    return Row(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MovieImageWidget(
          imagePath: (profileData.profilePath ?? '').generateImageURL,
          height: 290,
          width: 195,
          radius: 6,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 575),
                child: Text(
                  profileData.name ?? '',
                  style: TextStyle(
                    fontSize: isMobile ? 37 : 48,
                    fontWeight: FontWeight.w900,
                    height: 1.0,
                    letterSpacing: isMobile ? -1.2 : -1.8,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              MovieText(
                title: '${profileData.gender!.parseGender} - ${profileData.knownFor ?? ''}',
                style: theme.textTheme.labelMedium?.copyWith(
                  color: MovieColors.grey
                ),
              ),
              const SizedBox(height: 8),
              ProfileAgeWidget(
                profileData: profileData,
              ),
              const SizedBox(height: 12),
              LabeChipWidget(
                icon: Icons.location_pin,
                label: profileData.birthPlace ?? '',
              ),
              const SizedBox(height: 12),
              ProfileIdWidget(
                webpage: profileData.homepage,
                externalIds: externalIds,
              ),
              const SizedBox(height: 12),
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: LayoutBuilder(
                    builder: (context, box) {
                      const fontSize = 12.0;
                      const lineHeight = 1.4;
                      final lines = (box.maxHeight / (fontSize * lineHeight))
                      .floor()
                      .clamp(1, 100);
                      return Text(
                        profileData.biography ?? '',
                        maxLines: lines,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: MovieColors.white.withValues(alpha: 0.6),
                          fontSize: fontSize,
                          height: lineHeight,
                          fontWeight: FontWeight.w100,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}
