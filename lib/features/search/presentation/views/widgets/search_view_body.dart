import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/services/theme_colors.dart';
import 'package:flutter_bookly_app/core/shared/widgets/custom_input_field.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter_bookly_app/features/search/presentation/views/widgets/result_book_list_view.dart';

class SearchViewBody extends StatelessWidget {
  SearchViewBody({Key? key}) : super(key: key);
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey<FormFieldState> _searchKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16,),
        CustomTextField(
          hintText: 'Search',
          controller: _searchController,
          inputKey: _searchKey,
          isRequired: false,
          suffixIcon: Icon(Icons.search, size: 30, color: ThemeColors.secondaryText,),
        ),
        const SizedBox(height: 20),
        const Expanded(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: ResultBookListView(),
        )),

      ],
    );
  }
}
