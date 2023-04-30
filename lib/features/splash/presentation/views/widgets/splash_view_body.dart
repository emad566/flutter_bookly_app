import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/core/constants/app_constants.dart';
import 'package:flutter_bookly_app/core/constants/assets_paths.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter_bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetPaths.logo),
        const SizedBox(
          height: 30,
        ),
        SlideTransition(
          position: slidingAnimation,
          child: SlidingText(slidingAnimation: slidingAnimation),
        )
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(const HomeView(),
          transition: Transition.fadeIn,
          duration: AppConstants.transitionDuration);
    });
  }
}
