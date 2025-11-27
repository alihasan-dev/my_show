import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_strings.dart';
import '/core/constants/movie_colors.dart';
import '/core/utils/app_extension_method.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/widgets/movie_text.dart';
import '../provider/popular_people_provider.dart';

class PeopleScreen extends HookConsumerWidget {

  const PeopleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final peopleList = ref.watch(popularPeopleProvider);
    final scrollController = useScrollController();

    Timer? timer;
    useEffect(() {
      void listener() {
        if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 200) {
          if (timer == null || !timer!.isActive) {
            ref.read(popularPeopleProvider.notifier).popularPeople();
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
      ref.read(popularPeopleProvider.notifier).popularPeople();
      return null;
    }, []);
    
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: SafeArea(
        top: false,
        child: peopleList.when(
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
              itemCount: (data.results ?? []).length,
              itemBuilder: (context, index) {
                final people = (data.results ?? [])[index];
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    MovieImageWidget(
                      onTap: () => context.pushNamed(
                        AppRoutes.profile,
                        queryParameters: {
                          'userId': '${people.id}',
                        }
                      ),
                      imagePath: (people.profilePath ?? '').generateImageURL
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
                            title: people.name ?? '',
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
          error: (_,_) => Center(child: MovieText(title: AppStrings.noDataAvailable)), 
          loading: () => Center(child: CircularProgressIndicator())
        ),
      ),
    );
  }
}