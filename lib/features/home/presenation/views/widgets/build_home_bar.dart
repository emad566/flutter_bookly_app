import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/services/assets_paths.dart';
import 'package:flutter_bookly_app/services/theme_colors.dart';
import 'package:flutter_bookly_app/shared/widgets/build_appbar.dart';

AppBar buildHomeAppBar(BuildContext context, Function setState) {
  return buildAppBar(
      isShowLeading: false,
      setState: setState,
      context: context,
      actionRow: Row(
        children: [
          Image.asset(AssetPaths.logo, width: 100, height: 30,),
          const Spacer(),
          GestureDetector(
            onTap: (){},
            child: Icon(Icons.search, size: 35, color: ThemeColors.front,),
          ),
          const SizedBox(width: 10,),
        ],
      )
  );
}