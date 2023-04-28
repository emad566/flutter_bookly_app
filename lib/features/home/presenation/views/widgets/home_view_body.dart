import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/features/home/presenation/views/widgets/custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomListViewItem(),
      ],
    );
  }
}
