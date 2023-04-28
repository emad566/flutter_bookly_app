import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/shared/size_config.dart';

import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
      children: [
        const SizedBox(height: 10,),
        SizedBox(
          height: SizeConfig.screenHeight * .3,
          child: const FeaturedBookListView(),
        ),
      ],
    );
  }
}


