import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/core/services/app_styles.dart';
import 'package:flutter_bookly_app/core/services/theme_colors.dart';
import 'package:flutter_bookly_app/core/shared/widgets/book_rating.dart';

class BookDetailsViewTexts extends StatelessWidget {
  const BookDetailsViewTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'The Jungle Book',
          style: AppStyles.style22Bold,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Emad Soliman',
          style: AppStyles.style18.copyWith(
            color: ThemeColors.secondaryText,
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const BookRating(),
      ],
    );
  }
}
