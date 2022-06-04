import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/data/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton()
class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(Initial());

  Locale locale = kEnglishLocale;

  Future<void> getCurrentLocale() async {
    final hasKey = getIt<SharedPreferences>().containsKey(kLocaleKey);
    if (hasKey) {
      final value = getIt<SharedPreferences>().getString(kLocaleKey);
      locale = Locale.fromSubtags(
        languageCode: value!.split('_').first,
        countryCode: value.split('_').last,
      );
    } else {
      final deviceLocale = Platform.localeName;
      if (deviceLocale.contains('ar')) {
        locale = kArabicLocale;
      } else {
        locale = kEnglishLocale;
      }
      await getIt<SharedPreferences>().setString(
        kLocaleKey,
        locale.toString(),
      );
    }
    emit(LocaleChanged());
  }

  Future<void> changeLocale(Locale lc) async {
    locale = lc;
    await getIt<SharedPreferences>().setString(kLocaleKey, locale.toString());
    emit(LocaleChanged());
  }
}

@immutable
abstract class LocaleState {
  const LocaleState();
}

class Initial extends LocaleState {}

class LocaleChanged extends LocaleState {}
