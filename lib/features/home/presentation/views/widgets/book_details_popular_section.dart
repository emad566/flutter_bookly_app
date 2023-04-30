import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/services/app_styles.dart';
import 'package:flutter_bookly_app/core/services/size_config.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/featured_book_list_view.dart';

class BookDetailsPopularSection extends StatelessWidget {
  const BookDetailsPopularSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
      children: [
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
    );
  }
}
