import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/core/constants/app_colors.dart';
import 'package:flutter_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:get/get.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key, required this.book}) : super(key: key);
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: GestureDetector(
        onTap: (){Get.to(BookDetailsView(book: book));},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.secondaryBg,
            image: DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(book.volumeInfo!.imageLinks!.thumbnail!)),
          ),
        ),
      ),
    );
  }
}
