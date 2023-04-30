import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/core/services/app_styles.dart';

class NoItems extends StatelessWidget {
  const NoItems({Key? key, this.message = 'No items Found'}) : super(key: key);
  final String message;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: AppStyles.style24Bold,
      ),
    );
  }
}
