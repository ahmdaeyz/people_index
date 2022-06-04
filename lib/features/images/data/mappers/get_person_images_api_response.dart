import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/data/config/app_config.dart';
import 'package:people_index/features/images/data/models/get_person_images_api_response.dart';
import 'package:people_index/features/images/domain/entities/person_image.dart';

extension XGetPersonImagesApiResponse on GetPersonImagesApiResponse {
  List<PersonImage> get domain {
    final imagesBaseUrl = getIt<AppConfig>().imagesBaseUrl;
    return profiles!.map((e) {
      return PersonImage(
        imageUrl: imagesBaseUrl + (e.filePath ?? ''),
        aspectRatio: e.aspectRatio ?? 0,
        voteAverage: e.voteAverage ?? 0,
      );
    }).toList();
  }
}
