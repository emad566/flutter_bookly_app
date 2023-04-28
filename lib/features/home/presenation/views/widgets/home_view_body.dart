import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/shared/app_styles.dart';
import 'package:flutter_bookly_app/shared/size_config.dart';

import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * .3,
            child: const FeaturedBookListView(),
          ),
          const SizedBox(height: 30,),
          Text(
            'Best Seller',
            style: AppStyles.titleMedium,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}


