import 'package:flutter/material.dart';
import '../../core/widgets/movie_image_widget.dart';

class CustomSliverAppBar extends StatelessWidget {

  final String title;
  final String imagePath;
  final double expandedHeight;
  final bool showShadow;
  
  const CustomSliverAppBar({
    this.title = '',
    this.imagePath = '',
    this.expandedHeight = 250,
    this.showShadow = false,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      pinned: true,
      scrolledUnderElevation: 0,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.biggest.height <= kToolbarHeight + MediaQuery.of(context).padding.top)  {
            return FlexibleSpaceBar(
              centerTitle: false,
              title: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              titlePadding: EdgeInsets.only(bottom: 14, left: 52),
              expandedTitleScale: 1.0,
            );
          }
          return FlexibleSpaceBar(
            titlePadding: EdgeInsets.only(bottom: 16, left: 52),
            expandedTitleScale: 1.0,
            background: SizedBox(
              height: 250,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  MovieImageWidget(
                    imagePath: imagePath,
                    radius: 0.0,
                  ),
                  if (showShadow) ...[
                    ///show only in movie details screen 
                    Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: AlignmentGeometry.bottomCenter,
                          end: AlignmentGeometry.topCenter,
                          colors: [
                            Color(0x88121212), // Subtle overlay
                            Color(0x18121212), // Nearly transparent
                          ]
                        ),
                      ),
                    ),
                  ]
                  // Positioned(
                  //   bottom: 14,
                  //   right: 14,
                  //   child: Row(
                  //     spacing: 14,
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       InkWell(
                  //         onTap: () {
                            
                  //         },
                  //         child: Container(
                  //           width: 42,
                  //           height: 42,
                  //           decoration: BoxDecoration(
                  //             shape: BoxShape.circle,
                  //             border: Border.all(
                  //               color: MovieColors.white.withValues(alpha: 0.15),
                  //               width: 1.5,
                  //             ),
                  //             gradient: LinearGradient(
                  //               colors: [
                  //                 MovieColors.white.withValues(alpha: 0.18),
                  //                 MovieColors.white.withValues(alpha: 0.03),
                  //               ],
                  //               begin: Alignment.topLeft,
                  //               end: Alignment.bottomRight,
                  //             ),
                  //           ),
                  //           child: Icon(
                  //             Icons.bookmark_outline,
                  //             size: 18,
                  //             color: MovieColors.white.withValues(alpha: 0.5),
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                            
                  //         },
                  //         child: Container(
                  //           width: 42,
                  //           height: 42,
                  //           decoration: BoxDecoration(
                  //             shape: BoxShape.circle,
                  //             border: Border.all(
                  //               color: MovieColors.white.withValues(alpha: 0.15),
                  //               width: 1.5,
                  //             ),
                  //             gradient: LinearGradient(
                  //               colors: [
                  //                 MovieColors.white.withValues(alpha: 0.18),
                  //                 MovieColors.white.withValues(alpha: 0.03),
                  //               ],
                  //               begin: Alignment.topLeft,
                  //               end: Alignment.bottomRight,
                  //             ),
                  //           ),
                  //           child: Icon(
                  //             Icons.bookmark_outline,
                  //             size: 18,
                  //             color: MovieColors.white.withValues(alpha: 0.5),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}