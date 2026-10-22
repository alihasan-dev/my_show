import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../domain/entities/profile_external_id_entity.dart';

class ProfileIdWidget extends StatelessWidget {

  final String? webpage;
  final ProfileExternalIdEntity? externalIds;

  const new({
    super.key, this.webpage, 
    this.externalIds
  });

  @override
  Widget build(BuildContext context) {
    final facebookId = externalIds?.facebookId ?? '';
    final instagramId = externalIds?.instagramId ?? '';
    final tiktokId = externalIds?.tiktokId ?? '';
    final twitterId = externalIds?.twitterId ?? '';
    final youtubeId = externalIds?.youtubeId ?? '';
    final website = webpage ?? '';
    return Wrap(
      spacing: 10,
      children: [
        if (!website.isBlank) ... [
          _idWidget(
            label: 'Website',
            onTap: () => launchUrl(Uri.parse(website)),
            icon: Icons.language_rounded
          ),
        ],
        if (!facebookId.isBlank) ... [
          _idWidget(
            label: 'Facebook',
            onTap: () => launchUrl(Uri.parse('https://www.facebook.com/$facebookId')),
            imagePath: 'lib/core/assets/icons/facebook_logo.svg'
          ),
        ],
        if (!instagramId.isBlank) ... [
          _idWidget(
            label: 'Instagram',
            onTap: () => launchUrl(Uri.parse('https://www.instagram.com/$instagramId')),
            imagePath: 'lib/core/assets/icons/instagram_logo.svg'
          ),
        ],
        if (!twitterId.isBlank) ... [
          _idWidget(
            label: 'X',
            onTap: () => launchUrl(Uri.parse('https://x.com/$twitterId')),
            imagePath: 'lib/core/assets/icons/x_logo.svg'
          ),
        ],
        if (!tiktokId.isBlank) ... [
          _idWidget(
            label: 'Tiktok',
            onTap: () => launchUrl(Uri.parse('https://tiktok.com/@$tiktokId')),
            imagePath: 'lib/core/assets/icons/tiktok_logo.svg'
          ),
        ],
        if (!youtubeId.isBlank) ... [
          _idWidget(
            label: 'YouTube',
            onTap: () => launchUrl(Uri.parse('https://www.youtube.com/$youtubeId')),
            imagePath: 'lib/core/assets/icons/youtube_logo.svg'
          ),
        ]
      ]
    );
  }

  Widget _idWidget({
    String label = '',
    String imagePath = '',
    IconData? icon,
    Function()? onTap
  }) {
    return InkWell(
      onTap: onTap,
      child: Tooltip(
        message: label,
        child: Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: MovieColors.white.withValues(alpha: 0.1),
            shape: BoxShape.circle
          ),
          child: imagePath.isBlank
          ? Icon(
              icon,
              color: MovieColors.white.withValues(alpha: 0.7),
              size: 22,
            )
          : MovieImageWidget(
            imagePath: imagePath,
            width: 18.5,
            height: 18.5,
            imageColor: MovieColors.white.withValues(alpha: 0.7),
          ),
        ),
      ),
    );
  }
}