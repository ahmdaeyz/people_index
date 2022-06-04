import 'package:flutter/material.dart';
import 'package:people_index/l10n/l10n.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: const Icon(
        Icons.download,
        color: Colors.white,
      ),
      tooltip: context.l10n.download,
    );
  }
}
