import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_show/core/constants/movie_colors.dart';
import 'package:my_show/core/utils/app_extension_method.dart';
import 'package:my_show/core/widgets/custom_solid_button.dart';
import 'package:my_show/core/widgets/movie_image_widget.dart';
import 'package:my_show/core/widgets/movie_text.dart';
import '../../features/movie/domain/entities/trending_movie_entity.dart';
import '../routes/app_routes.dart';

class CarouselBanner extends StatelessWidget {
  final TrendingMovie movie;
  final String type;

  const CarouselBanner({
    super.key,
    required this.movie,
    this.type = 'movie'
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Stack(
        fit: StackFit.expand,
        children: [
          MovieImageWidget(
            imagePath: movie.backdropPath.generateImageURL,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.black,
                  Colors.black54,
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 70,
              top: 55,
              bottom: 55,
            ),
            child: SizedBox(
              width: 450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    spacing: 6,
                    children: [
                      Icon(
                        Icons.local_fire_department, 
                        size: 20,
                        color: MovieColors.red),
                      const Text(
                        "TRENDING NOW",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    movie.title,
                    style: const TextStyle(
                      fontSize: 42,
                      color: MovieColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Wrap(
                    spacing: 6,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: MovieColors.white.withValues(alpha: 0.2)
                        ),
                        child: Text(
                          movie.releaseDate.formatDOB(hideYrs: true),
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: (movie.voteAverage / 10).getRatingColor.withValues(alpha: 0.5)
                        ),
                        child: Text(
                          '${(movie.voteAverage * 10).toStringAsFixed(0)}%',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  // Flexible(
                  //   // child: SizedBox(),
                  //   child: SizedBox(
                  //     width: 450,
                  //     child: Text(
                  //       movie.overview,
                  //       maxLines: null,
                  //       overflow: TextOverflow.ellipsis,
                  //       style: const TextStyle(
                  //         fontSize: 14,
                  //         // height: 1.6,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Expanded(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 450,
                      ),
                      child: Text(
                        movie.overview,
                        maxLines: null,
                        // overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      CustomSolidButton(
                        widget: Row(
                          spacing: 5,
                          children: [
                            Icon(Icons.play_arrow_outlined, size: 20, color: Colors.black87),
                            MovieText(
                              title: 'Watch Trailer',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black87
                              ),
                            ),
                          ],
                        ),
                        backgroundColor: MovieColors.primaryColor,
                        padding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(6)
                        ),
                      ),
                      const SizedBox(width: 15),
                      CustomSolidButton(
                        widget: Row(
                          spacing: 5,
                          children: [
                            Icon(Icons.info_outline, size: 20),
                            MovieText(
                              title: 'More Info',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: MovieColors.white.withValues(alpha: 0.8)
                              ),
                            ),
                          ],
                        ),
                        backgroundColor: MovieColors.white.withValues(alpha: 0.2),
                        padding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(6)
                        ),
                        onTap: () {
                          context.pushNamed(
                            AppRoutes.movieDetails,
                            queryParameters: {
                              'id': '${movie.id}',
                              'type': movie.mediaType
                            }
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}