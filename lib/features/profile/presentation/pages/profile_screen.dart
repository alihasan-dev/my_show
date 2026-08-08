import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../provider/credit_tv_provider.dart';
import '../widgets/profile_shimmer_loader.dart';
import '../provider/credit_movies_provider.dart';
import '../provider/profile_details_provider.dart';
import '../widgets/profile_info_title.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/movie_cast_banner.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/widgets/custom_sliver_app_bar.dart';

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
    final creditMovieList = creditMoviesData.asData?.value.castEntity ?? [];
    final creditTvList = creditTvData.asData?.value.castEntity ?? [];

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
        child: profileDetails.when(
          data: (data) {
            return CustomScrollView(
              slivers: [
                CustomSliverAppBar(
                  expandedHeight: MediaQuery.of(context).size.height * 0.52,
                  title: data.name ?? '',
                  imagePath: (data.profilePath ?? '').generateImageURL,
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        SizedBox(height: 10),
                        if (creditMovieList.isNotEmpty) ...[
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
                              separatorBuilder: (_, _) => const SizedBox(width: 12),
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
                              separatorBuilder: (_, _) => const SizedBox(width: 12),
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
          loading: () => ProfileShimmerLoader(),
        ),
      ),
    );
  }
}
