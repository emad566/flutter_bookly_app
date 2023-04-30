import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/services/size_config.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/book_details_view_texts.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';

class BookDetailsBookSection extends StatelessWidget {
  const BookDetailsBookSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
      children: [
        const SizedBox(height: 16),
        SizedBox(
          width: SizeConfig.screenWidth * 0.35,
          child: const CustomListViewItem(),
        ),
        const SizedBox(height: 16),
        const BookDetailsViewTexts(),
        const SizedBox(height: 24),
      ],
    );
  }
}
