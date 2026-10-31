import 'package:flutter/material.dart';
import 'package:my_show/core/constants/movie_colors.dart';

class MovieCarouselWidget extends StatefulWidget {
  final int itemCount;
  final double height;
  final IndexedWidgetBuilder itemBuilder;
  final Color activeColor;
  final Color inactiveColor;
  final double viewPortFraction;

  const MovieCarouselWidget({
    super.key,
    required this.itemCount,
    required this.height,
    required this.itemBuilder,
    this.activeColor = MovieColors.white,
    this.inactiveColor = MovieColors.grey,
    this.viewPortFraction = 1.0
  });

  @override
  State<MovieCarouselWidget> createState() => _MovieCarouselWidgetState();
}

class _MovieCarouselWidgetState extends State<MovieCarouselWidget> {
  
  int _currentPage = 0;

  late PageController pageViewController;

  @override
  void initState() {
    pageViewController = PageController(viewportFraction: widget.viewPortFraction);
    super.initState();
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: widget.height,
          child: PageView.builder(
            controller: pageViewController,
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
              children: List.generate(
                widget.itemCount, 
                (index) {
                  final isActive = index == _currentPage;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: isActive ? 18 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: isActive 
                      ? widget.activeColor 
                      : widget.inactiveColor.withValues(alpha: 0.4),
                    ),
                  );
                }
              ),
            ),
          ),
      ],
    );
  }
}
