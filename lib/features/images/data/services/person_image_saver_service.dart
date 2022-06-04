import 'package:gallery_saver/gallery_saver.dart';
import 'package:injectable/injectable.dart';

// ignore:one_member_abstracts
abstract class PersonImageSaverService {
  Future<bool> savedPersonImage({required String imageUrl});
}

@Singleton(as: PersonImageSaverService)
class PersonImageSaverServiceImpl implements PersonImageSaverService {
  @override
  Future<bool> savedPersonImage({required String imageUrl}) async {
    final saved = await GallerySaver.saveImage(imageUrl);
    return saved ?? false;
  }
}
