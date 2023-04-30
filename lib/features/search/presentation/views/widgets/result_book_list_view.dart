import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';

class ResultBookListView extends StatelessWidget {
  const ResultBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, index) {
        // ignore: prefer_const_constructors
        return BookListViewItem();
      },
      separatorBuilder: (BuildContext context, index) {
        return const SizedBox(
          height: 16,
        );
      },
      itemCount: 20,
    );
  }
}
