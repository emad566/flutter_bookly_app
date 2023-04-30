import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bookly_app/core/errors/failures.dart';
import 'package:flutter_bookly_app/core/utlis/api_services.dart';
import 'package:flutter_bookly_app/features/home/data/models/book_model/books_model.dart';
import 'package:flutter_bookly_app/features/home/data/models/repos/home_repo.dart';

class HomeRepoImp extends HomeRepo {
  @override
  Future<Either<Failure, BooksModel>> fetchBestSellerBooks() async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, BooksModel>> fetchNewestBooks() async {
    try {
      dynamic data = await ApiService.get(
          endPoint: 'volumes?q=subject:programming&sorting=newest');
      BooksModel booksModel = BooksModel.fromJson(data);
      return right(booksModel);
    } catch (e) {
      debugPrint(e.toString());
      return left(ServerFailure());
    }
  }
}
