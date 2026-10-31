import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SeasonDetailsShimmer extends StatelessWidget {

  const SeasonDetailsShimmer({
    super.key,
    this.episodeCount = 3,
  });

  final int episodeCount;
  static const Color _baseColor = Color(0xFF252525);
  static const Color _highlightColor = Color(0xFF383838);
  static const Color _cardColor = Color(0xFF202020);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Shimmer.fromColors(
        baseColor: _baseColor,
        highlightColor: _highlightColor,
        period: const Duration(milliseconds: 1500),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          shrinkWrap: true,
          children: [
            SizedBox(height: 4),
            // Season metadata
            _buildMetadata,
            SizedBox(height: 18),
            // Season overview
            _buildOverview,
            SizedBox(height: 18),
            // Episode list
            ...List.generate(
              episodeCount,
              (index) => Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: _buildEpisodeCard
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get _buildMetadata {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        _metadataPlaceholder,
        _metadataPlaceholder,
        _metadataPlaceholder,
      ],
    );
  }

  Widget get _metadataPlaceholder {
    return Container(
      width: 110,
      height: 36,
      decoration: ShapeDecoration(
        color: _cardColor,
        shape: StadiumBorder(),
      ),
    );
  }

  Widget get _buildOverview {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _placeholder(
          width: double.infinity,
          height: 14,
          radius: 5,
        ),
        const SizedBox(height: 8),
        _placeholder(
          width: double.infinity,
          height: 14,
          radius: 5,
        ),
        const SizedBox(height: 8),
        _placeholder(
          width: double.infinity,
          height: 14,
          radius: 5,
        ),
        const SizedBox(height: 8),
        _placeholder(
          width: 180,
          height: 14,
          radius: 5,
        ),
      ],
    );
  }

  Widget get _buildEpisodeCard {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(8)
      ),
    );
  }

  Widget _placeholder({
    required double width,
    required double height,
    double radius = 8,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: _baseColor,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }

}