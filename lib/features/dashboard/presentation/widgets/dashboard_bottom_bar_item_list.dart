import 'package:flutter/material.dart';
import 'package:my_show/features/dashboard/domain/entities/label_icon_model.dart';
import '../../../../core/constants/app_strings.dart';

List<LabelIcon> bottomBarIconList = [
  LabelIcon(title: AppStrings.movies, iconData: Icons.movie_outlined),
  LabelIcon(title: AppStrings.tvShows, iconData: Icons.tv),
  LabelIcon(title: AppStrings.people, iconData: Icons.groups_2),
  LabelIcon(title: AppStrings.search, iconData: Icons.search)
];