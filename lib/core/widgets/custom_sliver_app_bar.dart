import 'package:flutter/material.dart';
import '../../core/widgets/movie_image_widget.dart';
import '../constants/movie_colors.dart';

class CustomSliverAppBar extends StatelessWidget {

  final String title;
  final String imagePath;
  final double expandedHeight;
  
  const CustomSliverAppBar({
    this.title = '',
    this.imagePath = '',
    this.expandedHeight = 250,
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
                  // Positioned(
                  //   bottom: 14,
                  //   right: 14,
                  //   child: Row(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       Container(
                  //         width: 48,
                  //         height: 48,
                  //         decoration: BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           border: Border.all(
                  //             color: MovieColors.white.withValues(alpha: 0.25),
                  //             width: 1.5,
                  //           ),
                  //           gradient: LinearGradient(
                  //             colors: [
                  //               MovieColors.white.withValues(alpha: 0.20),
                  //               MovieColors.white.withValues(alpha: 0.05),
                  //             ],
                  //             begin: Alignment.topLeft,
                  //             end: Alignment.bottomRight,
                  //           ),
                  //         ),
                  //         child: Icon(
                  //           Icons.arrow_forward_ios_rounded,
                  //           size: 20,
                  //           color: MovieColors.white.withValues(alpha: 0.8),
                  //         ),
                  //       )
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