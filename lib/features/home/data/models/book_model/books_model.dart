import 'package:equatable/equatable.dart';
import 'package:flutter_bookly_app/features/home/data/models/book_model/book_model.dart';

class BooksModel extends Equatable {
  final String? kind;
  final int? totalItems;
  final List<BookModel>? items;

  const BooksModel({this.kind, this.totalItems, this.items});

  factory BooksModel.fromJson(Map<String, dynamic> json) => BooksModel(
        kind: json['kind'] as String?,
        totalItems: json['totalItems'] as int?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => BookModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'totalItems': totalItems,
        'items': items?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [kind, totalItems, items];
}
