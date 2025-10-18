import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import '../constants/movie_colors.dart';
import '../../core/utils/app_extension_method.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MovieImageWidget extends StatelessWidget {
  
  final String imagePath;
  final double? height;
  final double? width;
  final Function()? onTap;
  final BoxFit fit;
  final double radius;
  final BorderRadius? borderRadius;
  final String tooltipMessage;
  
  const MovieImageWidget({
    required this.imagePath,
    this.height,
    this.width,
    this.onTap,
    this.fit = BoxFit.cover,
    this.radius = 8.0,
    this.borderRadius,
    this.tooltipMessage = '',
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Tooltip(
        message: tooltipMessage,
        child: ClipRRect(
          borderRadius: borderRadius ?? BorderRadius.circular(radius),
          child: _imageBuilder
        ),
      )
    );
  }

  Widget get _imageBuilder {
    if (imagePath.isBlank) return _imageErrorBuilder;
    if (imagePath.startsWith('https://')) {
      if (imagePath.endsWith('.svg')) {
        return _svgNetworkImageBuilder;
      }
      return _networkImageBuilder;
    } else {
      if (imagePath.endsWith('.svg')) {
        return _svgAssetImageBuilder;
      }
      return _imageAssetBuilder;
    }
  }

  Widget get _networkImageBuilder {
    return CachedNetworkImage(
      imageUrl: imagePath,
      height: height,
      width: width,
      fit: fit,
      placeholder: (_,_) => _imageShimmerLoader,
      errorWidget: (_,_,_) => _imageErrorBuilder,
    );
  }

  Widget get _svgNetworkImageBuilder {
    return SvgPicture.network(
      imagePath,
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (_,_,_) => _imageErrorBuilder,
      placeholderBuilder: (_) => _imageShimmerLoader,
    );
  }

  Widget get _svgAssetImageBuilder {
    return SvgPicture.asset(
      imagePath,
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (_,_,_) => _imageErrorBuilder,
      placeholderBuilder: (_) => _imageShimmerLoader,
    );
  }

  Widget get _imageAssetBuilder {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (_,_,_) => _imageErrorBuilder
    );
  }

  Widget get _imageShimmerLoader {
    // return Shimmer.fromColors(
    //   baseColor: Colors.grey[300]!, 
    //   highlightColor: Colors.grey[100]!,
    //   child: Container(
    //     width: width,
    //     height: height,
    //     color: MovieColors.grey,
    //   ),
    // );
    return Shimmer.fromColors(
      baseColor: Color(0xFF2A2A2A), // Dark shimmer base
      highlightColor: Color(0xFF3A3A3A), // Subtle highlight
      child: Container(
        width: width,
        height: height,
        color: Color(0xFF2C2C2C)
      ),
    );
  }

  Widget get _imageErrorBuilder {
    return Container(
      width: width,
      height: height,
      color: MovieColors.grey.withValues(alpha: 0.3),
      child: Center(
        child: Icon(
          Icons.broken_image,
          size: 40,
          color: MovieColors.grey,
        ),
      ),
    );
  }

}