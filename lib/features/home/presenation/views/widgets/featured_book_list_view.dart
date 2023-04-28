import 'package:flutter/cupertino.dart';

import 'custom_list_view_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index){
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomListViewItem(),
        );
      },
    );
  }
}