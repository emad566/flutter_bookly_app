import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/core/services/app_styles.dart';

class CustomError extends StatelessWidget {
  const CustomError({Key? key, required this.errMessage}) : super(key: key);
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Text(
        errMessage,
        style: AppStyles.style16,
      ),
    );
  }
}
