import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Icon(
              Icons.warning,
              color: Colors.yellow,
              size: 48,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              message,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
