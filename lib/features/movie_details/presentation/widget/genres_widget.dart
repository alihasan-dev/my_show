import 'package:flutter/material.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../domain/entities/movie_details_entity.dart';

class GenresWidget extends StatelessWidget {

  final MovieDetailEntity movieData;

  const GenresWidget({
    super.key, 
    required this.movieData
  });

  @override
  Widget build(BuildContext context) {
    final genresList = movieData.genres ?? [];
    if (genresList.isEmpty) return SizedBox.shrink();
    final theme = Theme.of(context).textTheme;
    return Wrap(
      children: List.generate(
        genresList.length,
        (index) {
          return MovieText(
            title: (genresList[index].name ?? '') + 
            (index != genresList.length - 1 ? ', ' : ''),
            style: theme.labelMedium?.copyWith(
              color: MovieColors.grey
            ),
          );
        }
      ),
    );
  }
}