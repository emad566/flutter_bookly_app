import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/core/constants/app_colors.dart';
import 'package:flutter_bookly_app/core/constants/assets_paths.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.secondaryBg,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetPaths.test)
          ),
        ),
      ),
    );
  }
}
