import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/services/app_styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Search', style: AppStyles.style30Bold,);
  }
}
