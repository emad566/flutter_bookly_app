import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/features/home/presenation/views/widgets/home_view_body.dart';
import 'package:flutter_bookly_app/services/assets_paths.dart';
import 'package:flutter_bookly_app/services/theme_colors.dart';
import 'package:flutter_bookly_app/shared/widgets/build_appbar.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        isShowLeading: false,
        setState: setState,
        context: context,
        actionRow: Row(
          children: [
            Image.asset(AssetPaths.logo, width: 100, height: 30,),
            Spacer(),
            GestureDetector(
              onTap: (){},
              child: Icon(Icons.search, size: 35, color: ThemeColors.front,),
            ),
            SizedBox(width: 10,),
          ],
        )
      ),
      body: const HomeViewBody(),
    );
  }
}
