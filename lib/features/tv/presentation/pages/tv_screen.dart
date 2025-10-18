import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../provider/nowplaying_provider.dart';
import '../provider/popular_show_provider.dart';
import '../provider/trending_tv_show_provider.dart';
import '../widgets/tv_show_widget.dart';
import '../../../../features/tv/presentation/provider/top_rated_show_provider.dart';
import '../../../../features/tv/presentation/provider/upcoming_show_provider.dart';
import '../../../../core/routes/app_routes.dart';

class TvScreen extends HookConsumerWidget {

  const TvScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trendingTVShow = ref.watch(trendingTvShowProvider);
    final popularShows = ref.watch(popularShowProvider);
    final topRatedShows = ref.watch(topRatedShowProvider);
    final nowPlayingShows = ref.watch(nowPlayingProvider);
    final upcomingShows = ref.watch(upcomingShowProvider);
    final popularShowsList = popularShows.asData?.value.result ?? [];
    final topRatedShowsList = topRatedShows.asData?.value.result ?? [];
    final nowPlayingShowList = nowPlayingShows.asData?.value.result ?? [];
    final upcomingShowsList = upcomingShows.asData?.value.result ?? [];
    return SafeArea(
      child: trendingTVShow.when(
        data: (data) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              TvShowWidgets(
                title: 'Trending',
                tvShowList: data.result,
              ),
              TvShowWidgets(
                title: 'Now Playing',
                tvShowList: nowPlayingShowList,
                viewAll: () {
                  context.pushNamed(
                    AppRoutes.viewAll,
                    queryParameters: {
                      'showType': 'tv',
                      'showCategory': 'now_playing'
                    }
                  );
                },
              ),
              TvShowWidgets(
                title: 'Popular',
                tvShowList: popularShowsList,
                viewAll: () {
                  context.pushNamed(
                    AppRoutes.viewAll,
                    queryParameters: {
                      'showType': 'tv',
                      'showCategory': 'popular'
                    }
                  );
                },
              ),
              TvShowWidgets(
                title: 'Top Rated',
                tvShowList: topRatedShowsList,
                viewAll: () {
                  context.pushNamed(
                    AppRoutes.viewAll,
                    queryParameters: {
                      'showType': 'tv',
                      'showCategory': 'top_rated'
                    }
                  );
                },
              ),
              TvShowWidgets(
                title: 'Upcoming',
                tvShowList: upcomingShowsList,
                viewAll: () {
                  context.pushNamed(
                    AppRoutes.viewAll,
                    queryParameters: {
                      'showType': 'tv',
                      'showCategory': 'upcoming'
                    }
                  );
                },
              ),
            ],
          );
        },
        error: (message,_) => Center(child: Text('$message')), 
        loading: () => const Center(child: CircularProgressIndicator())
      ),
    );
  }
}