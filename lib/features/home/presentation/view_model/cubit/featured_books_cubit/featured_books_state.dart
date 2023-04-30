import 'package:equatable/equatable.dart';
import 'package:flutter_bookly_app/features/home/data/models/book_model/books_model.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoadingState extends FeaturedBooksState {}

class FeaturedBooksSuccessState extends FeaturedBooksState {
  final BooksModel booksModel;
  const FeaturedBooksSuccessState(this.booksModel);
}

class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errMessage;
  const FeaturedBooksFailureState(this.errMessage);
}
