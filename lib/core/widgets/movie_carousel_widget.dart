import 'package:flutter/material.dart';
import 'package:movie_db/core/constants/movie_colors.dart';

class MovieCarouselWidget extends StatefulWidget {
  final int itemCount;
  final double height;
  final IndexedWidgetBuilder itemBuilder;
  final Color activeColor;
  final Color inactiveColor;

  const MovieCarouselWidget({
    super.key,
    required this.itemCount,
    required this.height,
    required this.itemBuilder,
    this.activeColor = MovieColors.white,
    this.inactiveColor = MovieColors.grey,
  });

  @override
  State<MovieCarouselWidget> createState() => _MovieCarouselWidgetState();
}

class _MovieCarouselWidgetState extends State<MovieCarouselWidget> {
  
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: widget.height,
          child: PageView.builder(
            itemCount: widget.itemCount,
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemBuilder: widget.itemBuilder,
          ),
        ),
        if (widget.itemCount > 1)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.itemCount, (index) {
                final isActive = index == _currentPage;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  width: isActive ? 18 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: isActive ? widget.activeColor : widget.inactiveColor.withValues(alpha: 0.4),
                  ),
                );
              }),
            ),
          ),
      ],
    );
  }
}
