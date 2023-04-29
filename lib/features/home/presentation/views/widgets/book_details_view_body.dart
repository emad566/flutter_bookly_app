import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/services/app_styles.dart';
import 'package:flutter_bookly_app/core/services/size_config.dart';
import 'package:flutter_bookly_app/core/services/theme_colors.dart';
import 'package:flutter_bookly_app/core/shared/widgets/book_rating.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/book_details_view_app_bar.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/book_details_view_buttons.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/book_details_view_texts.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';

import 'featured_book_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 24, bottom: 0, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const BookDetailsViewAppBar(),
                const SizedBox(height: 16),
                SizedBox(
                  width: SizeConfig.screenWidth * 0.35,
                  child: const CustomListViewItem(),
                ),
                const SizedBox(height: 16),
                const BookDetailsViewTexts(),
                const SizedBox(height: 24),
                const BookDetailsButtons(),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Popular Books',
                    style: AppStyles.style18,
                    textAlign: TextAlign.left,
                  ),
                ),
                const Expanded(child: SizedBox(height: 16)),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.20,
                  child: const FeaturedBookListView(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
