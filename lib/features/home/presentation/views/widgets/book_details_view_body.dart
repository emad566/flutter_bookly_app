import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/services/size_config.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/book_details_book_section.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/book_details_popular_section.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/book_details_view_app_bar.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/book_details_view_buttons.dart';

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
            padding:
                const EdgeInsets.only(top: 24, bottom: 0, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                BookDetailsViewAppBar(),
                BookDetailsBookSection(),
                BookDetailsButtons(),
                Expanded(child: BookDetailsPopularSection()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
