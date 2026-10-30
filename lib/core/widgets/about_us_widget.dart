import 'package:flutter/material.dart';
import 'package:my_show/core/constants/movie_colors.dart';
import 'package:my_show/core/widgets/movie_image_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {

  const AboutScreen({super.key});

  static const Color _surface = Color(0xFF222222);
  static const Color _border = Color(0xFF303030);
  static const Color _secondary = Color(0xFFAAAAAA);
  static Color white = MovieColors.white.withValues(alpha: 0.9);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      insetPadding: const EdgeInsets.all(16),
      contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      content: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 520,
          maxHeight: 600,
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildHeader(),
              const SizedBox(height: 18),
              _buildDivider(),
              const SizedBox(height: 16),
              _buildDescription(),
              const SizedBox(height: 18),
              _buildDivider(),
              const SizedBox(height: 16),
              _buildDataSources(context),
              const SizedBox(height: 12),
              _buildTmdbDisclaimer(),
              const SizedBox(height: 18),
              _buildDivider(),
              const SizedBox(height: 16),
              _buildLegalSection(),
              const SizedBox(height: 18),
              _buildDivider(),
              const SizedBox(height: 16),
              _buildFooter(),
            ],
          ),
        ),
      )
    );
  }

  Future<void> launchURL({required String url, required BuildContext context}) async {
    final Uri uri = Uri.parse(url);
    if(await canLaunchUrl(uri) && context.mounted) {
      launchUrl(uri);
      // AnalyticsService.instance.logEvent(
      //   name: 'screen_view',
      //   parameters: {'screen_name': 'about_us'},
      // );
    }
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          height: 52,
          width: 52,
          decoration: BoxDecoration(
            color: _surface,
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.all(6),
          child: Image.asset(
            'lib/core/assets/images/my_show_logo.png',
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'MyShow',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: white,
                  letterSpacing: 0.2,
                ),
              ),
              const SizedBox(height: 3),
              const Text(
                'Discover. Explore. Experience.',
                style: TextStyle(
                  fontSize: 12,
                  color: _secondary,
                ),
              ),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            color: MovieColors.greenAccent.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: _border),
          ),
          child: Text(
            'v1.0.0',
            // 'v$version${buildNumber != null ? '+$buildNumber' : ''}',
            style: const TextStyle(
              color: MovieColors.greenAccent,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionTitle('About MyShow'),
        const SizedBox(height: 10),
        const Text(
          'Your destination for discovering movies and TV shows. '
          'Explore trending titles, discover new releases, browse '
          'cast and crew, check ratings, and keep track of your '
          'favourite entertainment.',
          style: TextStyle(
            fontSize: 13,
            height: 1.7,
            color: _secondary,
          ),
        ),
      ],
    );
  }

  Widget _buildDataSources(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionTitle('Powered by'),
        const SizedBox(height: 12),
        _dataSourceTile(
          logo: MovieImageWidget(
            imagePath: 'lib/core/assets/icons/tmdb_logo.svg',
            width: 30,
            height: 30,
            fit: BoxFit.contain,
            backgroundColor: MovieColors.white,
          ),
          title: 'The Movie Database',
          subtitle: 'Movies, TV shows, people and images',
          onTap: () => launchURL(url: 'https://www.themoviedb.org/', context: context),
        ),
        const SizedBox(height: 10),
        _dataSourceTile(
          logo: const Text(
            'OMDb',
            style: TextStyle(
              color: Color(0xFFE5B34B),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          title: 'The Open Movie Database',
          subtitle: 'Additional movie information',
          onTap: () => launchURL(url: 'https://www.omdbapi.com/', context: context)
        ),
      ],
    );
  }

  Widget _dataSourceTile({
    required Widget logo,
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) {
    return Material(
      color: _surface,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: _border),
          ),
          child: Row(
            children: [
              Container(
                height: 46,
                width:46,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: logo,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 11,
                        color: _secondary,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.open_in_new_rounded,
                size: 20,
                color: _secondary,
              ),
              const SizedBox(width: 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTmdbDisclaimer() {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: _surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _border),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.info_outline_rounded,
            color: _secondary,
            size: 17,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'This product uses the TMDB API but is not endorsed '
              'or certified by TMDB.',
              style: TextStyle(
                fontSize: 11,
                height: 1.6,
                color: _secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLegalSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionTitle('Legal & Information'),
        const SizedBox(height: 10),
        _legalTile(
          icon: Icons.description_outlined,
          title: 'Terms of Use',
          onTap: () {},
        ),
        _legalTile(
          icon: Icons.shield_outlined,
          title: 'Privacy Policy',
          onTap: () {},
        ),
      ],
    );
  }

  Widget _legalTile({
    required IconData icon,
    required String title,
    VoidCallback? onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 11,
            horizontal: 8,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                size: 19,
                color: _secondary,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 13,
                    color: white,
                  ),
                ),
              ),
              const Icon(
                Icons.chevron_right_rounded,
                size: 19,
                color: _secondary,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Made with ',
              style: TextStyle(
                fontSize: 11,
                color: _secondary,
              ),
            ),
            Icon(
              Icons.favorite_rounded,
              color: MovieColors.red,
              size: 13,
            ),
            Text(
              ' for movie lovers',
              style: TextStyle(
                fontSize: 11,
                color: _secondary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          '© ${DateTime.now().year} Traversal',
          style: const TextStyle(
            fontSize: 11,
            color: Color(0xFF777777),
          ),
        ),
      ],
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: white,
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      height: 1,
      thickness: 1,
      color: _border,
    );
  }
  
}