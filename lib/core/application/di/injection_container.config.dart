// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i15;

import '../../../features/images/data/data_sources/images_local_data_source.dart'
    as _i16;
import '../../../features/images/data/data_sources/images_local_data_source_impl.dart'
    as _i17;
import '../../../features/images/data/data_sources/images_remote_data_source.dart'
    as _i18;
import '../../../features/images/data/data_sources/images_remote_data_source_impl.dart'
    as _i19;
import '../../../features/images/data/repositories/images_repository_impl.dart'
    as _i21;
import '../../../features/images/data/services/images_api_service.dart' as _i5;
import '../../../features/images/data/services/person_image_saver_service.dart'
    as _i14;
import '../../../features/images/domain/repositories/images_repository.dart'
    as _i20;
import '../../../features/images/domain/use_cases/check_is_person_image_saved_use_case.dart'
    as _i25;
import '../../../features/images/domain/use_cases/get_person_images_use_case.dart'
    as _i27;
import '../../../features/images/domain/use_cases/save_person_image_use_case.dart'
    as _i24;
import '../../../features/images/presentation/bloc/image_saver/image_saver_cubit.dart'
    as _i29;
import '../../../features/images/presentation/bloc/person_images/person_images_cubit.dart'
    as _i31;
import '../../../features/people/data/data_sources/people_data_source.dart'
    as _i8;
import '../../../features/people/data/data_sources/people_local_data_source.dart'
    as _i11;
import '../../../features/people/data/data_sources/people_remote_data_source.dart'
    as _i9;
import '../../../features/people/data/data_sources/person_details_data_source.dart'
    as _i12;
import '../../../features/people/data/data_sources/person_details_remote_data_source.dart'
    as _i13;
import '../../../features/people/data/repositories/people_repository_impl.dart'
    as _i23;
import '../../../features/people/data/services/people_api_service.dart' as _i7;
import '../../../features/people/data/services/people_database.dart' as _i10;
import '../../../features/people/domain/repositories/people_repository.dart'
    as _i22;
import '../../../features/people/domain/use_cases/get_person_details_use_case.dart'
    as _i26;
import '../../../features/people/domain/use_cases/get_popular_people_use_case.dart'
    as _i28;
import '../../../features/people/presentation/bloc/person_details/person_details_cubit.dart'
    as _i30;
import '../../../features/people/presentation/bloc/popular_people/popular_people_cubit.dart'
    as _i32;
import '../../data/config/app_config.dart' as _i3;
import '../locale/locale_cubit.dart' as _i6;
import 'app_module.dart' as _i33; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.lazySingleton<_i3.AppConfig>(() => _i3.AppConfig());
  gh.lazySingleton<_i4.Dio>(() => appModule.dio(get<_i3.AppConfig>()));
  gh.factory<_i5.ImagesAPIService>(() => _i5.ImagesAPIService(get<_i4.Dio>()));
  gh.singleton<_i6.LocaleCubit>(_i6.LocaleCubit());
  gh.factory<_i7.PeopleAPIService>(() => _i7.PeopleAPIService(get<_i4.Dio>()));
  gh.lazySingleton<_i8.PeopleDataSource>(
      () => _i9.PeopleRemoteDataSource(get<_i7.PeopleAPIService>()));
  gh.lazySingleton<_i10.PeopleDatabase>(() => _i10.PeopleDatabase());
  gh.lazySingleton<_i11.PeopleLocalDataSource>(
      () => _i11.PeopleLocalDataSourceImpl(get<_i10.PeopleDatabase>()));
  gh.lazySingleton<_i12.PersonDetailsDataSource>(
      () => _i13.PersonDetailsRemoteDataSource(get<_i7.PeopleAPIService>()));
  gh.singleton<_i14.PersonImageSaverService>(
      _i14.PersonImageSaverServiceImpl());
  await gh.factoryAsync<_i15.SharedPreferences>(() => appModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i16.ImagesLocalDataSource>(
      () => _i17.ImagesLocalDataSourceImpl(get<_i15.SharedPreferences>()));
  gh.lazySingleton<_i18.ImagesRemoteDataSource>(() =>
      _i19.ImagesRemoteDataSourceImpl(
          get<_i14.PersonImageSaverService>(), get<_i5.ImagesAPIService>()));
  gh.lazySingleton<_i20.ImagesRepository>(() => _i21.ImagesRepositoryImpl(
      get<_i18.ImagesRemoteDataSource>(), get<_i16.ImagesLocalDataSource>()));
  gh.lazySingleton<_i22.PeopleRepository>(() => _i23.PeopleRepositoryImpl(
      get<_i8.PeopleDataSource>(),
      get<_i12.PersonDetailsDataSource>(),
      get<_i11.PeopleLocalDataSource>()));
  gh.factory<_i24.SavePersonImageUseCase>(
      () => _i24.SavePersonImageUseCase(get<_i20.ImagesRepository>()));
  gh.factory<_i25.CheckIsPersonImageSavedUseCase>(
      () => _i25.CheckIsPersonImageSavedUseCase(get<_i20.ImagesRepository>()));
  gh.factory<_i26.GetPersonDetailsUseCase>(
      () => _i26.GetPersonDetailsUseCase(get<_i22.PeopleRepository>()));
  gh.factory<_i27.GetPersonImagesUseCase>(
      () => _i27.GetPersonImagesUseCase(get<_i20.ImagesRepository>()));
  gh.factory<_i28.GetPopularPeopleUseCase>(
      () => _i28.GetPopularPeopleUseCase(get<_i22.PeopleRepository>()));
  gh.factory<_i29.ImageSaverCubit>(() => _i29.ImageSaverCubit(
      get<_i24.SavePersonImageUseCase>(),
      get<_i25.CheckIsPersonImageSavedUseCase>()));
  gh.factory<_i30.PersonDetailsCubit>(
      () => _i30.PersonDetailsCubit(get<_i26.GetPersonDetailsUseCase>()));
  gh.factory<_i31.PersonImagesCubit>(
      () => _i31.PersonImagesCubit(get<_i27.GetPersonImagesUseCase>()));
  gh.factory<_i32.PopularPeopleCubit>(
      () => _i32.PopularPeopleCubit(get<_i28.GetPopularPeopleUseCase>()));
  return get;
}

class _$AppModule extends _i33.AppModule {}
