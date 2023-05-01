import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/constants/app_constants.dart';
import 'package:flutter_bookly_app/core/services/app_styles.dart';
import 'package:flutter_bookly_app/core/services/size_config.dart';
import 'package:flutter_bookly_app/core/services/theme_colors.dart';
import 'package:flutter_bookly_app/core/shared/widgets/book_rating.dart';
import 'package:flutter_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key, required this.book}) : super(key: key);
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Row(
      children: [
        SizedBox(
          width: SizeConfig.screenWidth * 0.23,
          height: SizeConfig.screenHeight * 0.2,
          child: CustomListViewItem(book: book),
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
                book.volumeInfo!.title!,
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
                book.volumeInfo!.authors![0],
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
                    'Free',
                    style: AppStyles.style18Bold,
                  ),
                  const Spacer(),
                  BookRating(
                    rate: book.volumeInfo!.averageRating?? 0,
                    count: book.volumeInfo!.ratingsCount?? 0,
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
