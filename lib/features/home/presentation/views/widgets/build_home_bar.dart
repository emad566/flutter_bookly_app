import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/constants/assets_paths.dart';
import 'package:flutter_bookly_app/core/services/theme_colors.dart';
import 'package:flutter_bookly_app/core/shared/widgets/build_appbar.dart';

AppBar buildHomeAppBar(BuildContext context, Function setState) {
  return buildAppBar(
      isShowLeading: false,
      setState: setState,
      context: context,
      actionRow: Row(
        children: [
          Image.asset(
            AssetPaths.logo,
            width: 100,
            height: 30,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.search,
              size: 35,
              color: ThemeColors.primaryText,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ));
}
