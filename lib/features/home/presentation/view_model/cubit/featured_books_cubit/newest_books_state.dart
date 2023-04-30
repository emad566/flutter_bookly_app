import 'package:equatable/equatable.dart';
import 'package:flutter_bookly_app/features/home/data/models/book_model/books_model.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoadingState extends NewestBooksState {}

class NewestBooksSuccessState extends NewestBooksState {
  final BooksModel booksModel;
  const NewestBooksSuccessState(this.booksModel);
}

class NewestBooksFailureState extends NewestBooksState {
  final String errMessage;
  const NewestBooksFailureState(this.errMessage);
}
