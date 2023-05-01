import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/core/services/app_styles.dart';
import 'package:flutter_bookly_app/core/services/size_config.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';

import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * .3,
                child: const FeaturedBookListView(),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Best Seller',
                  style: AppStyles.style22Bold,
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        // ignore: prefer_const_constructors
        SliverFillRemaining(
          // ignore: prefer_const_constructors
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            // ignore: prefer_const_constructors
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
