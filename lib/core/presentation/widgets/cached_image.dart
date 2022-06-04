import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:people_index/core/presentation/widgets/error_icon.dart';
import 'package:people_index/core/presentation/widgets/loading.dart';

class CachedImage extends StatelessWidget {
  const CachedImage(
      {super.key, required this.imageUrl, this.height, this.width});

  final String imageUrl;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      placeholder: (_, __) => const LoadingIndicator(),
      errorWidget: (_, __, dynamic t) => const ErrorIcon(),
      fit: BoxFit.cover,
    );
  }
}
