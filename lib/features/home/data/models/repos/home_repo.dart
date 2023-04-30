import 'package:dartz/dartz.dart';
import 'package:flutter_bookly_app/core/errors/failures.dart';
import 'package:flutter_bookly_app/features/home/data/models/book_model/books_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, BooksModel>> fetchFeaturedBooks();
  Future<Either<Failure, BooksModel>> fetchNewestBooks();
}
