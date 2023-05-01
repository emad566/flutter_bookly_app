import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly_app/core/shared/widgets/custom_error.dart';
import 'package:flutter_bookly_app/core/shared/widgets/custom_loading_indicator.dart';
import 'package:flutter_bookly_app/core/shared/widgets/no_items.dart';
import 'package:flutter_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bookly_app/features/home/presentation/view_model/cubit/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter_bookly_app/features/home/presentation/view_model/cubit/newest_books_cubit/newest_books_state.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (BuildContext context, NewestBooksState state) {
        if(state is NewestBooksSuccessState){
          List<BookModel> books = state.booksModel.items != null ? state.booksModel.items! : [];
          if(books.isEmpty) return const NoItems();

          return ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index)  {
              return BookListViewItem(book: books[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 16,
              );
            },
            itemCount: books.length,
          );
        } else if(state is NewestBooksLoadingState){
          return const CustomLoadingIndicator();
        } else if(state is NewestBooksFailureState){
          return CustomError(errMessage: state.errMessage);
        }
        return const NoItems(message: 'No State');
      },
    );
  }
}
