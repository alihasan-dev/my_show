import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
        title: MovieText(
          title: showCategory.capitalizeWord
        ),
      ),
      body: SafeArea(
        top: false,
        child: showList.when(
          data: (data) {
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
                return MovieImageWidget(
                  onTap: () => context.pushNamed(
                    AppRoutes.movieDetails,
                    queryParameters: {
                      'id': '${show.id}',
                      'type': showType
                    }
                  ),
                  imagePath: show.posterPath.generateImageURL
                );
              }
            );
          }, 
          error: (_,_) => Center(child: MovieText(title: 'No data found')), 
          loading: () => Center(child: CircularProgressIndicator())
        ),
      ),
    );
  }
}