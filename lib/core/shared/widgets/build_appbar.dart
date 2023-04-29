import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/services/theme_colors.dart';
import 'package:flutter_bookly_app/core/services/theme_services.dart';
import 'package:get/get.dart';

AppBar buildAppBar({
  required Function setState,
  required BuildContext context,
  bool isShowLeading = true,
  Row? actionRow,
}) {

  return AppBar(
    automaticallyImplyLeading: isShowLeading,
    leading: isShowLeading ? IconButton(
      onPressed: (){
        Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: ThemeColors.white,
            ),
          )
        : Container(),
    actions: [
      SizedBox(width: isShowLeading? 50 : 20),
      if(actionRow!=null)
        Expanded(child: actionRow),

      IconButton(
        onPressed: (){
          setState(() {
            ThemeServices().switchTheme();
          });
        },
        icon: Get.isDarkMode?
        Icon(Icons.nightlight_outlined, size: 24, color: ThemeColors.white,)
            :
        Icon(Icons.wb_sunny_outlined, size: 24, color: ThemeColors.white,),
      ),


    ],
    elevation: 0,
    backgroundColor: context.theme.colorScheme.background,
  );
}