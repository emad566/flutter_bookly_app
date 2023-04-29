import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/features/home/presenation/views/widgets/custom_list_view_item.dart';
import 'package:flutter_bookly_app/services/theme_colors.dart';
import 'package:flutter_bookly_app/shared/app_styles.dart';
import 'package:flutter_bookly_app/shared/size_config.dart';

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
          child: const CustomListViewItem(),
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
                style: AppStyles.subHeadingStyle.copyWith(
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'J.K. Rowling',
                style: AppStyles.subTitleStyle.copyWith(
                  color: ThemeColors.secondary,
                ),
                textAlign: TextAlign.left,
              ),
              Row(
                children: [
                  Text(
                    '19.99 \$',
                    style: AppStyles.subHeadingStyle,
                  ),
                  const Spacer(),
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
                    style: AppStyles.titleStyle,
                  ),
                  Text(
                    '(2390) ',
                    style: AppStyles.subTitleStyle
                        .copyWith(color: ThemeColors.secondary),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
