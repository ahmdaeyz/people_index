import 'package:equatable/equatable.dart';

class Page<T> extends Equatable {
  const Page({
    required this.items,
    this.isLastPage = false,
  });

  final List<T> items;
  final bool isLastPage;

  @override
  List<Object> get props => [items, isLastPage];
}
