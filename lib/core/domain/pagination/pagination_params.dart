import 'package:equatable/equatable.dart';

class PaginationParams extends Equatable {
  const PaginationParams({
    this.pageNum = 1,
  });

  final int pageNum;

  @override
  List<Object> get props => [pageNum];
}
