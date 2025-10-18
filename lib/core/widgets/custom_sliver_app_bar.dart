import 'package:flutter/material.dart';
import '../../core/widgets/movie_image_widget.dart';

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
            background: MovieImageWidget(
              imagePath: imagePath,
              radius: 0.0,
            ),
          );
        }
      ),
    );
  }
}