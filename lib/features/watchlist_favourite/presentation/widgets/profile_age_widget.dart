// import 'package:flutter/material.dart';
// import 'package:my_show/core/utils/app_extension_method.dart';
// import '../../../../core/constants/movie_colors.dart';
// import '../../../../core/widgets/movie_text.dart';
// import '../../domain/entities/profile_details_entity.dart';

// class ProfileAgeWidget extends StatelessWidget {

//   final ProfileDetailsEntity profileData;
  
//   const new({
//     super.key, 
//     required this.profileData
//   });

//   @override
//   Widget build(BuildContext context) {
//     final profileDeathDay = profileData.deathDay ?? '';
//     final profileBirthDay = profileData.birthday ?? '';
//     if (profileBirthDay.isBlank && profileDeathDay.isBlank) return SizedBox.shrink();
//     final ageResult = profileDeathDay.ageDifference(birthDay: profileBirthDay);
//     final theme = Theme.of(context).textTheme;
//     return MovieText(
//       title: ageResult,
//       style: theme.labelMedium?.copyWith(
//         color: MovieColors.grey
//       ),
//     );
//   }
// }