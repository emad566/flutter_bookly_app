import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/services/app_styles.dart';
import 'package:flutter_bookly_app/core/services/theme_colors.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key, required this.rate, required this.count,
  });

  final int rate;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.star,
            color: ThemeColors.star,
            size: 25,
          ),
        ),
        Text(
          '$rate  ',
          style: AppStyles.style16,
        ),
        Text(
          '($count) ',
          style: AppStyles.style14.copyWith(color: ThemeColors.secondaryText),
        ),
      ],
    );
  }
}
