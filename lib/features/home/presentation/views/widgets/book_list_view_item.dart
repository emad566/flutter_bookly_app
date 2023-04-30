import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/constants/app_constants.dart';
import 'package:flutter_bookly_app/core/services/app_styles.dart';
import 'package:flutter_bookly_app/core/services/size_config.dart';
import 'package:flutter_bookly_app/core/services/theme_colors.dart';
import 'package:flutter_bookly_app/core/shared/widgets/book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Row(
      children: [
        SizedBox(
          width: SizeConfig.screenWidth * 0.23,
          height: SizeConfig.screenHeight * 0.2,
          child: const Text('wait') //CustomListViewItem(),
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Haryy Potter and the Goblet of Fire',
                style: AppStyles.style18Bold.copyWith(
                  fontFamily: AppConstants.secondaryFontFamily,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'J.K. Rowling',
                style: AppStyles.style14.copyWith(
                  color: ThemeColors.secondaryBg,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
              ),
              Row(
                children: [
                  Text(
                    '19.99 \$',
                    style: AppStyles.style18Bold,
                  ),
                  const Spacer(),
                  const BookRating(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
