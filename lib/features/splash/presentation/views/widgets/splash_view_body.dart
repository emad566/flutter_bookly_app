import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/services/assets_paths.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AssetPaths.logo),
    );
  }
}
