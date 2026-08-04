import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_show/core/constants/movie_colors.dart';
import 'package:my_show/core/widgets/arrow_button.dart';
import 'package:my_show/core/widgets/carousel_banner_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../features/movie/domain/entities/trending_movie_entity.dart';

class CustomCarouselWidget extends StatefulWidget {
  final List<TrendingMovie> movies;

  const CustomCarouselWidget({
    super.key,
    required this.movies,
  });

  @override
  State<CustomCarouselWidget> createState() => _CustomCarouselWidgetState();
}

class _CustomCarouselWidgetState extends State<CustomCarouselWidget> {

  final CarouselSliderController controller = CarouselSliderController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 430,
      child: Stack(
        children: [
          CarouselSlider.builder(
            carouselController: controller,
            itemCount: widget.movies.length,
            options: CarouselOptions(
              height: 430,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 6),
              enlargeCenterPage: false,
              onPageChanged: (i, _) {
                setState(() {
                  index = i;
                });
              },
            ),
            itemBuilder: (_, i, _) {
              return CarouselBanner(
                movie: widget.movies[i],
              );
            },
          ),
          Positioned(
            left: 20,
            top: 0,
            bottom: 0,
            child: Center(
              child: ArrowButton(
                icon: Icons.chevron_left,
                onTap: controller.previousPage,
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 0,
            bottom: 0,
            child: Center(
              child: ArrowButton(
                icon: Icons.chevron_right,
                onTap: controller.nextPage,
              ),
            ),
          ),
          Positioned(
            left: 60,
            bottom: 25,
            child: AnimatedSmoothIndicator(
              activeIndex: index,
              count: widget.movies.length,
              effect: ExpandingDotsEffect(
                dotHeight: 6,
                dotWidth: 6,
                activeDotColor: MovieColors.primaryColor,
                dotColor: Colors.grey.withValues(alpha: 0.6)
              ),
            ),
          ),
        ],
      ),
    );
  }
}