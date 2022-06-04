// ignore: one_member_abstracts
abstract class ImagesLocalDataSource {
  Future<bool> isSaved({required String imageUrl});

  Future<void> markSaved({required String imageUrl});
}
