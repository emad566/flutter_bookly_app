import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/services/theme_colors.dart';

class BookDetailsViewAppBar extends StatelessWidget {
  const BookDetailsViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            size: 32,
            color: ThemeColors.primaryText,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
            size: 32,
            color: ThemeColors.primaryText,
          ),
        ),
      ],
    );
  }
}