
import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/shared/themes.dart';


class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (BuildContext context, Widget? child) {
        return Text(
          'Read Free Books',
          style: Themes.headingStyle,
          textAlign: TextAlign.center,
        );
      },
    );
  }
}