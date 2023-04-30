import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/services/app_styles.dart';
import 'package:flutter_bookly_app/core/services/theme_colors.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

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
          '4.8  ',
          style: AppStyles.style16,
        ),
        Text(
          '(2390) ',
          style: AppStyles.style14.copyWith(color: ThemeColors.secondaryText),
        ),
      ],
    );
  }
}
