import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import '../constants/movie_colors.dart';
import '../../core/utils/app_extension_method.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MovieImageWidget extends HookConsumerWidget {
  
  final String imagePath;
  final double? height;
  final double? width;
  final Function()? onTap;
  final BoxFit fit;
  final double? radius;
  final BorderRadius? borderRadius;
  final String tooltipMessage;
  final ImageErrorIconSize? errorIconSize;
  
  const MovieImageWidget({
    required this.imagePath,
    this.height,
    this.width,
    this.onTap,
    this.fit = BoxFit.cover,
    this.radius,
    this.borderRadius,
    this.tooltipMessage = '',
    this.errorIconSize,
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHovered = useState<bool>(false);
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        // Applies a border when hovered, and an invisible border when not
        border: Border.all(
          color: isHovered.value ? MovieColors.white : MovieColors.transparent,
          width: 2,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        onHover: (value) => isHovered.value = value,
        child: Tooltip(
          message: tooltipMessage,
          child: ClipRRect(
            borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 8.0),
            child: _imageBuilder
          ),
        ),
      ),
    );
  }

  Widget get _imageBuilder {
    if (imagePath.isBlank) return _imageErrorBuilder;
    if (imagePath.startsWith('https://')) {
      if (imagePath.endsWith('.svg')) {
        return _svgNetworkImageBuilder;
      }
      return kIsWeb || kIsWasm ? _networkImageBuilderWeb : _networkImageBuilder;
    } else {
      if (imagePath.endsWith('.svg')) {
        return _svgAssetImageBuilder;
      }
      return _imageAssetBuilder;
    }
  }

  Widget get _networkImageBuilder => CachedNetworkImage(
    imageUrl: imagePath,
    height: height,
    width: width,
    fit: fit,
    placeholder: (_, _) => _imageShimmerLoader,
    errorWidget: (_, _, _) => _imageErrorBuilder,
  );

  Widget get _networkImageBuilderWeb => Image.network(
    imagePath,
    height: height,
    width: width,
    fit: fit,
    loadingBuilder: (context, child, progress) {
      if (progress == null) return child;
      return _imageShimmerLoader;
    },
    errorBuilder: (_, _, _) => _imageErrorBuilder,
  );

  Widget get _svgNetworkImageBuilder => SvgPicture.network(
    imagePath,
    width: width,
    height: height,
    fit: fit,
    errorBuilder: (_, _, _) => _imageErrorBuilder,
    placeholderBuilder: (_) => _imageShimmerLoader,
  );

  Widget get _svgAssetImageBuilder => SvgPicture.asset(
    imagePath,
    width: width,
    height: height,
    fit: fit,
    errorBuilder: (_, _, _) => _imageErrorBuilder,
    placeholderBuilder: (_) => _imageShimmerLoader,
  );

  Widget get _imageAssetBuilder => Image.asset(
    imagePath,
    width: width,
    height: height,
    fit: fit,
    errorBuilder: (_, _, _) => _imageErrorBuilder
  );

  Widget get _imageShimmerLoader => Shimmer.fromColors(
    baseColor: Color(0xFF2A2A2A), // Dark shimmer base
    highlightColor: Color(0xFF3A3A3A), // Subtle highlight
    child: Container(
      width: width,
      height: height,
      color: Color(0xFF2C2C2C)
    ),
  );

  Widget get _imageErrorBuilder => Container(
    width: width,
    height: height,
    color: MovieColors.grey.withValues(alpha: 0.3),
    child: Center(
      child: Icon(
        Icons.broken_image,
        size: (errorIconSize ?? ImageErrorIconSize.medium).errorIconSize,
        color: MovieColors.grey,
      ),
    ),
  );

}

enum ImageErrorIconSize {large, medium, small}