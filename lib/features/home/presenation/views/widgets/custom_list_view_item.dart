import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/services/assets_paths.dart';
import 'package:flutter_bookly_app/services/theme_colors.dart';
import 'package:flutter_bookly_app/shared/size_config.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SizedBox(
      height: SizeConfig.screenHeight * .3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: darkSecondaryClr,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetPaths.test)
            ),
          ),
        ),
      ),
    );
  }
}
