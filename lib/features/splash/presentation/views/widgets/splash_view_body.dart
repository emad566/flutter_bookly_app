import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/services/assets_paths.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetPaths.logo),
      ],
    );
  }
}
