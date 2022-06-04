import 'package:injectable/injectable.dart';
import 'package:people_index/core/data/constants/constants.dart';
import 'package:people_index/features/images/data/data_sources/images_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ImagesLocalDataSource)
class ImagesLocalDataSourceImpl implements ImagesLocalDataSource {
  ImagesLocalDataSourceImpl(this.prefs);

  final SharedPreferences prefs;

  @override
  Future<bool> isSaved({required String imageUrl}) async {
    final list = prefs.getStringList(kSavedImagesKey);
    if (list != null) {
      if (list.contains(imageUrl)) {
        return true;
      }
    }
    return false;
  }

  @override
  Future<void> markSaved({required String imageUrl}) async {
    final list = prefs.getStringList(kSavedImagesKey);
    if (list != null) {
      list.add(imageUrl);
      await prefs.setStringList(kSavedImagesKey, list);
    } else {
      await prefs.setStringList(kSavedImagesKey, [imageUrl]);
    }
  }
}
