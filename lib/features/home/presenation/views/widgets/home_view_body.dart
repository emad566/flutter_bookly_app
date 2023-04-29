import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/core/services/app_styles.dart';
import 'package:flutter_bookly_app/core/services/size_config.dart';
import 'package:flutter_bookly_app/features/home/presenation/views/widgets/book_list_view_item.dart';

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
          const SizedBox(height: 30),
          Text(
            'Best Seller',
            style: AppStyles.style22Bold,
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, index){
                // ignore: prefer_const_constructors
                return BookListViewItem();
              },
              separatorBuilder: (BuildContext context, index){
                return const SizedBox(height: 16,);
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
