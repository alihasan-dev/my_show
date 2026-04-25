import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_db/core/widgets/people_shimmer_widget.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/widgets/no_data_widget.dart';
import '../provider/view_all_provider.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/routes/app_routes.dart';

class ViewAllScreen extends HookConsumerWidget {
  
  final String showType;
  final String showCategory;
  
  const ViewAllScreen({
    required this.showCategory,
    required this.showType,
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showList = ref.watch(viewAllProvider);
    final scrollController = useScrollController();
    Timer? timer;
    useEffect(() {
      void listener() {
        if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 200) {
          if (timer == null || !timer!.isActive) {
            ref.read(viewAllProvider.notifier).viewAllShow(showType: showType, showCategory: showCategory);
            timer = Timer(const Duration(seconds: 2), () {});
          }
        }
      }
      scrollController.addListener(listener);
      return () {
        scrollController.removeListener(listener);
        timer?.cancel();
      };
    }, [scrollController]);
    
    useEffect(() {
      ref.read(viewAllProvider.notifier).viewAllShow(showType: showType, showCategory: showCategory);
      return null;
    }, []);
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: MovieText(
          title: showCategory.capitalizeWord,
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SafeArea(
        top: false,
        child: showList.when(
          data: (data) {
            if (data.result.isEmpty) {
              return NoDataWidget(
                icon: Icons.people_outline_rounded,
                title: 'No ${showCategory.capitalizeWord} Found',
                subtitle: '${showCategory.capitalizeWord} aren\'t available right now.\nPlease try again later.',
                onRetry: () => ref.read(viewAllProvider.notifier).viewAllShow(showType: showType, showCategory: showCategory),
              );
            }
            return GridView.builder(
              controller: scrollController,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.7
              ), 
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16
              ),
              itemCount: data.result.length,
              itemBuilder: (context, index) {
                final show = data.result[index];
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    MovieImageWidget(
                      onTap: () {
                        if (show.id.isNegative || showType.isBlank) return;
                        context.pushNamed(
                          AppRoutes.movieDetails,
                          queryParameters: {
                            'id': '${show.id}',
                            'type': showType
                          }
                        );
                      },
                      imagePath: show.posterPath.generateImageURL
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                        color: MovieColors.black.withValues(alpha: 0.4),
                        child: Center(
                          child: MovieText(
                            title: show.title,
                            maxLine: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 11
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            );
          }, 
          error: (_,_) => NoDataWidget(
            icon: Icons.error_outline_rounded,
            title: 'Something Went Wrong',
            subtitle: 'We couldn\'t load the ${showCategory.toLowerCase()} list.\nPlease check your connection and try again.',
            onRetry: () => ref.read(viewAllProvider.notifier).viewAllShow(showType: showType, showCategory: showCategory),
          ), 
          loading: () => const PeopleShimmerWidget()
        ),
      ),
    );
  }
}