import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../core/widgets/movie_text.dart';
import '../constants/movie_colors.dart';
import '../utils/app_extension_method.dart';
class VotePercentageWidget extends HookConsumerWidget {

  final double votePercent;
  final double width;
  final double height;
  final double yTransform;
  
  const VotePercentageWidget({
    required this.votePercent,
    this.height = 36,
    this.width = 36,
    this.yTransform = 19,
    super.key
  }) : assert(votePercent >= 0.0 && votePercent <= 1.0, 'Vote percentage should only lie between >= 0.0 and <= 1.0');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final controller = useAnimationController(duration: const Duration(milliseconds: 1800));
    final animation = useMemoized(
      () => Tween<double>(
        begin: 0.0,
        end: votePercent,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Curves.easeOutCubic,
        ),
      ),
      [votePercent],
    );
    useEffect(() {
      controller
        ..reset()
        ..forward();
      return null;
    }, [votePercent]);

    return Container(
      padding: const EdgeInsets.all(3.0),
      transform: Matrix4.translationValues(
        0,
        yTransform,
        0,
      ),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: MovieColors.black.withValues(alpha: 0.9),
        shape: BoxShape.circle,
      ),
      child: AnimatedBuilder(
        animation: animation,
        builder: (_, child) {
          final value = animation.value;
          return Stack(
            children: [
              CircularProgressIndicator(
                value: value,
                strokeWidth: 3.2,
                strokeCap: StrokeCap.round,
                color: votePercent.getRatingColor,
                backgroundColor: MovieColors.grey,
              ),
              Align(
                alignment: Alignment.center,
                child: MovieText(
                  title: (value * 100).toStringAsFixed(0),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 10,
                    color: MovieColors.white,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}