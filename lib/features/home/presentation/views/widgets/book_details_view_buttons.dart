import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/services/app_styles.dart';
import 'package:flutter_bookly_app/core/services/size_config.dart';
import 'package:flutter_bookly_app/core/services/theme_colors.dart';

class BookDetailsButtons extends StatelessWidget {
  const BookDetailsButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: SizeConfig.screenWidth * 0.33,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: ThemeColors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          child: Text(
            '19.99\$',
            style: AppStyles.style16Bold.copyWith(
              color: ThemeColors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: SizeConfig.screenWidth * 0.33,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: ThemeColors.tripleBg,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Text(
            'Free Preview',
            style: AppStyles.style16Bold.copyWith(
              color: ThemeColors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
