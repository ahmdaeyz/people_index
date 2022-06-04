// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/application/locale/locale_cubit.dart';
import 'package:people_index/core/application/navigation/router.dart';
import 'package:people_index/core/application/theme/colors.dart';
import 'package:people_index/core/presentation/hooks/bloc.dart';
import 'package:people_index/generated/l10n.dart';
import 'package:people_index/l10n/l10n.dart';

class App extends HookWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final localeCubit = useBloc<LocaleCubit, LocaleState>(
      () => getIt<LocaleCubit>()..getCurrentLocale(),
    );
    return BlocBuilder<LocaleCubit, LocaleState>(
      bloc: localeCubit,
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          onGenerateTitle: (context) => context.l10n.appTitle,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: localeCubit.locale,
          supportedLocales: S.delegate.supportedLocales,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
              accentColor: accentColor,
            ),
          ),
        );
      },
    );
  }
}
