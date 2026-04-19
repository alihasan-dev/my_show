import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../movie_details/domain/entities/video_entity.dart';

class VideoPlayerScreen extends StatefulWidget {
  final List<Results> videos;
  final int initialIndex;

  const VideoPlayerScreen({
    super.key,
    required this.videos,
    this.initialIndex = 0,
  });

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late YoutubePlayerController _controller;
  late int _currentIndex;
  final ValueNotifier<bool> _isFullScreen = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _initController();
  }

  void _initController() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.videos[_currentIndex].key ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        enableCaption: false,
        useHybridComposition: true,
      ),
    );
  }

  void _playVideoAt(int index) {
    if (index < 0 || index >= widget.videos.length) return;
    setState(() => _currentIndex = index);
    _controller.load(widget.videos[_currentIndex].key ?? '');
  }

  bool get _hasNext => _currentIndex < widget.videos.length - 1;
  bool get _hasPrevious => _currentIndex > 0;

  @override
  void dispose() {
    _isFullScreen.dispose();
    _controller.dispose();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final video = widget.videos[_currentIndex];

    return YoutubePlayerBuilder(
      onEnterFullScreen: () => _isFullScreen.value = true,
      onExitFullScreen: () => _isFullScreen.value = false,
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: MovieColors.red,
        progressColors: const ProgressBarColors(
          playedColor: MovieColors.red,
          handleColor: MovieColors.red,
        ),
        topActions: [
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              video.name ?? '',
              style: const TextStyle(color: MovieColors.white, fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
        bottomActions: [
          CurrentPosition(),
          const SizedBox(width: 8),
          ProgressBar(
            isExpanded: true,
            colors: const ProgressBarColors(
              playedColor: MovieColors.red,
              handleColor: MovieColors.red,
            ),
          ),
          const SizedBox(width: 8),
          RemainingDuration(),
          IconButton(
            icon: const Icon(Icons.fullscreen, color: MovieColors.white),
            onPressed: () => _controller.toggleFullScreenMode(),
          ),
        ],
      ),
      builder: (context, player) {
        return ValueListenableBuilder<bool>(
          valueListenable: _isFullScreen,
          builder: (context, isFullScreen, _) {
            return Scaffold(
              appBar: isFullScreen
                  ? null
                  : AppBar(
                      title: Text(
                        video.name ?? 'Video',
                        style: theme.titleMedium?.copyWith(color: MovieColors.textPrimary),
                      ),
                      backgroundColor: MovieColors.black,
                      iconTheme: const IconThemeData(color: MovieColors.white),
                    ),
              body: Column(
                children: [
                  player,
                  if (!isFullScreen) ...[
                    // Controls row
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: _hasPrevious ? () => _playVideoAt(_currentIndex - 1) : null,
                            icon: Icon(
                              Icons.skip_previous_rounded,
                              size: 32,
                              color: _hasPrevious ? MovieColors.white : MovieColors.grey,
                            ),
                          ),
                          const SizedBox(width: 16),
                          IconButton(
                            onPressed: () {
                              _controller.value.isPlaying ? _controller.pause() : _controller.play();
                            },
                            icon: ValueListenableBuilder(
                              valueListenable: _controller,
                              builder: (_, value, __) => Icon(
                                value.isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
                                size: 48,
                                color: MovieColors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          IconButton(
                            onPressed: _hasNext ? () => _playVideoAt(_currentIndex + 1) : null,
                            icon: Icon(
                              Icons.skip_next_rounded,
                              size: 32,
                              color: _hasNext ? MovieColors.white : MovieColors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Video info
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MovieText(
                            title: video.name ?? '',
                            style: theme.titleMedium?.copyWith(
                              color: MovieColors.textPrimary,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLine: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          MovieText(
                            title: video.type ?? '',
                            style: theme.bodySmall?.copyWith(color: MovieColors.textSecondary),
                          ),
                        ],
                      ),
                    ),
                    // Up next list
                    if (widget.videos.length > 1) ...[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: MovieText(
                            title: 'Up Next',
                            style: theme.titleSmall?.copyWith(
                              color: MovieColors.textPrimary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          itemCount: widget.videos.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 10),
                          itemBuilder: (context, index) {
                            final item = widget.videos[index];
                            final isPlaying = index == _currentIndex;
                            return InkWell(
                              borderRadius: BorderRadius.circular(8),
                              onTap: () => _playVideoAt(index),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: isPlaying
                                      ? MovieColors.white.withValues(alpha: 0.1)
                                      : Colors.transparent,
                                ),
                                child: Row(
                                  children: [
                                    if (isPlaying)
                                      const Padding(
                                        padding: EdgeInsets.only(right: 8),
                                        child: Icon(Icons.play_arrow, color: MovieColors.red, size: 20),
                                      ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.network(
                                        YoutubePlayer.getThumbnail(videoId: item.key ?? ''),
                                        width: 120,
                                        height: 68,
                                        fit: BoxFit.cover,
                                        errorBuilder: (_, __, ___) => Container(
                                          width: 120,
                                          height: 68,
                                          color: MovieColors.grey.withValues(alpha: 0.3),
                                          child: const Icon(Icons.broken_image, color: MovieColors.grey),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item.name ?? '',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.bodyMedium?.copyWith(
                                              color: isPlaying ? MovieColors.white : MovieColors.textPrimary,
                                              fontWeight: isPlaying ? FontWeight.w600 : FontWeight.normal,
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          Text(
                                            item.type ?? '',
                                            style: theme.bodySmall?.copyWith(color: MovieColors.textSecondary),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ],
                ],
              ),
            );
          },
        );
      },
    );
  }
}
