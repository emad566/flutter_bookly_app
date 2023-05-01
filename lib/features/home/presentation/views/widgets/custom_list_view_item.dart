import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/core/shared/widgets/cached_image.dart';
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
        child: CustomCachedImage(url: book.volumeInfo!.imageLinks?.thumbnail?? ""),
      ),
    );
  }
}
