import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly_app/features/home/data/models/repos/home_repo_implement.dart';
import 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepoImp homeRepo;

  Future<void> fetchNewestBooks() async{
    emit(NewestBooksLoadingState());
    Either result = await homeRepo.fetchNewestBooks();
    result.fold((failure){
      emit(NewestBooksFailureState(failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccessState(books));
    });
  }
}
