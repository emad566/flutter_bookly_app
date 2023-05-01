import 'package:flutter/cupertino.dart';

class ResultBookListView extends StatelessWidget {
  const ResultBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, index) {
        // ignore: prefer_const_constructors
        return Text('tex'); //BookListViewItem()
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
