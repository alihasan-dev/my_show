import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/core/widgets/people_shimmer_widget.dart';
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
  final String label;
  
  const ViewAllScreen({
    required this.showCategory,
    required this.showType,
    required this.label,
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showList = ref.watch(viewAllProvider);
    final scrollController = useScrollController();
    final searchQueryController = useTextEditingController();
    final enableSearch = useState<bool>(false);
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
        centerTitle: false,
        scrolledUnderElevation: 0,
        title: AnimatedSize(
          duration: Duration(milliseconds: 250),
          child: enableSearch.value
          ? TextField(
              controller: searchQueryController,
              onChanged: (value) => ref.read(viewAllProvider.notifier).search(query: value),
              decoration: InputDecoration.collapsed(
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontSize: 18
                )
              ),
              autofocus: true,
            )
          : Text(
            label.capitalizeWord,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              if (enableSearch.value) {
                searchQueryController.clear();
                ref.read(viewAllProvider.notifier).search(query: '');
              }
              enableSearch.value = !enableSearch.value;
            }, 
            icon: Icon(
              enableSearch.value 
              ? Icons.clear 
              : Icons.search
            ),
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return showList.when(
              data: (data) {
                if (data.result.isEmpty) {
                  return NoDataWidget(
                    icon: searchQueryController.text.isBlank
                    ? Icons.people_outline_rounded
                    : Icons.search_off,
                    title: searchQueryController.text.isBlank
                    ? 'No ${label.capitalizeWord} Found'
                    : "No matches for ${searchQueryController.text}.",
                    subtitle: searchQueryController.text.isBlank
                    ? '${label.capitalizeWord} aren\'t available right now.\nPlease try again later.'
                    : 'Check the spelling or try another search.',
                    onRetry: searchQueryController.text.isBlank
                    ? () => ref.read(viewAllProvider.notifier).viewAllShow(showType: showType, showCategory: showCategory)
                    : null,
                  );
                }
                return GridView.builder(
                  controller: scrollController,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: constraints.maxWidth.getCrossAxisCount,
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
                subtitle: 'We couldn\'t load the ${label.toLowerCase()} list.\nPlease check your connection and try again.',
                onRetry: () => ref.read(viewAllProvider.notifier).viewAllShow(showType: showType, showCategory: showCategory),
              ), 
              loading: () => const PeopleShimmerWidget()
            );
          }
        ),
      ),
    );
  }
}