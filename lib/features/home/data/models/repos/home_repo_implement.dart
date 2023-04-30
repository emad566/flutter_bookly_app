import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bookly_app/core/errors/failures.dart';
import 'package:flutter_bookly_app/core/utlis/api_services.dart';
import 'package:flutter_bookly_app/features/home/data/models/book_model/books_model.dart';
import 'package:flutter_bookly_app/features/home/data/models/repos/home_repo.dart';

class HomeRepoImp extends HomeRepo {
  @override
  Future<Either<Failure, BooksModel>> fetchFeaturedBooks() async {
    try {
      dynamic data = await ApiService.get(
          endPoint: 'volumes?Filtering=free-ebook&q=subject:programming');
      BooksModel booksModel = BooksModel.fromJson(data as Map<String, dynamic>);
      return right(booksModel);
    } on DioError catch (dioError){
      return left(ServerFailure.fromDioError(dioError));
    } catch(e){
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, BooksModel>> fetchNewestBooks() async {
    try {
      dynamic data = await ApiService.get(
          endPoint: 'volumes?Filtering=free-ebook&q=subject:programming&sorting=newest');
      BooksModel booksModel = BooksModel.fromJson(data);
      return right(booksModel);
    } on DioError catch (dioError){
      return left(ServerFailure.fromDioError(dioError));
    } catch(e){
      return left(ServerFailure(e.toString()));
    }
  }
}
