import 'package:flutter/cupertino.dart';

import 'custom_list_view_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return const CustomListViewItem();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 16,
        );
      },
      itemCount: 10,
    );
  }
}
