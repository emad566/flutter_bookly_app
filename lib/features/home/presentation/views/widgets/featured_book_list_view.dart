import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly_app/core/shared/widgets/custom_error.dart';
import 'package:flutter_bookly_app/core/shared/widgets/custom_loading_indicator.dart';
import 'package:flutter_bookly_app/core/shared/widgets/no_items.dart';
import 'package:flutter_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bookly_app/features/home/presentation/view_model/cubit/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter_bookly_app/features/home/presentation/view_model/cubit/featured_books_cubit/featured_books_state.dart';

import 'custom_list_view_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (BuildContext context, FeaturedBooksState state) {
        if(state is FeaturedBooksSuccessState){
          List<BookModel> books = state.booksModel.items != null ? state.booksModel.items! : [];

          if(books.isEmpty) return const NoItems();

          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return CustomListViewItem(book: books[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 16,
              );
            },
            itemCount: books.length,
          );
        } else if(state is FeaturedBooksLoadingState){
          return const CustomLoadingIndicator();
        } else if(state is FeaturedBooksFailureState){
          return CustomError(errMessage: state.errMessage);
        }
        return const NoItems(message: 'No State');
      },
    );
  }
}
