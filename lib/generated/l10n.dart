// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `People Index`
  String get appTitle {
    return Intl.message(
      'People Index',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Not found.`
  String get contentError {
    return Intl.message(
      'Not found.',
      name: 'contentError',
      desc: '',
      args: [],
    );
  }

  /// `Something is wrong.`
  String get somethingIsWrong {
    return Intl.message(
      'Something is wrong.',
      name: 'somethingIsWrong',
      desc: '',
      args: [],
    );
  }

  /// `Forbidden access.`
  String get forbiddenAccessError {
    return Intl.message(
      'Forbidden access.',
      name: 'forbiddenAccessError',
      desc: '',
      args: [],
    );
  }

  /// `Service error.`
  String get serviceError {
    return Intl.message(
      'Service error.',
      name: 'serviceError',
      desc: '',
      args: [],
    );
  }

  /// `Internal error.`
  String get internetError {
    return Intl.message(
      'Internal error.',
      name: 'internetError',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Failed to save image.`
  String get failedToSaveImage {
    return Intl.message(
      'Failed to save image.',
      name: 'failedToSaveImage',
      desc: '',
      args: [],
    );
  }

  /// `Image was saved to your gallery.`
  String get imageSavedToGallery {
    return Intl.message(
      'Image was saved to your gallery.',
      name: 'imageSavedToGallery',
      desc: '',
      args: [],
    );
  }

  /// `No biography available in this language.`
  String get noBiographyInLanguage {
    return Intl.message(
      'No biography available in this language.',
      name: 'noBiographyInLanguage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
