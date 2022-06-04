import 'package:flutter/material.dart';
import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/application/locale/locale_cubit.dart';
import 'package:people_index/core/data/constants/constants.dart';

class ChangeLanguageButton extends StatelessWidget {
  const ChangeLanguageButton({super.key, this.onLanguageChanged});

  final VoidCallback? onLanguageChanged;

  @override
  Widget build(BuildContext context) {
    final localeCubit = getIt<LocaleCubit>();
    final isArabic = localeCubit.locale == kArabicLocale;
    return TextButton(
      onPressed: () async {
        await localeCubit
            .changeLocale(isArabic ? kEnglishLocale : kArabicLocale);
        onLanguageChanged?.call();
      },
      child: Text(
        isArabic ? 'English' : 'العربية',
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: Colors.white),
      ),
    );
  }
}
