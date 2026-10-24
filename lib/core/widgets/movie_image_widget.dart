import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
  final Color? imageColor;
  final bool disableHover;
  final Color? backgroundColor;
  
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
    this.imageColor,
    this.disableHover = false,
    this.backgroundColor,
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHovered = useState<bool>(false);
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: backgroundColor ?? Color(0xFF121212),
        borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 8.0),
        // Applies a border when hovered, and an invisible border when not
        border: isHovered.value
        ? Border.all(
          color: MovieColors.white,
          width: 2,
          )
        : null
      ),
      child: InkWell(
        onTap: onTap,
        onHover: disableHover
        ? null
        : (value) => isHovered.value = value,
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
    colorFilter: imageColor == null
    ? null
    : ColorFilter.mode(
      imageColor!, 
      BlendMode.srcIn
    ),
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