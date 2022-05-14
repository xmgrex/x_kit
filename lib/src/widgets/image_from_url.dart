import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../x_kit.dart';

class ImageFromUrl extends StatelessWidget {
  const ImageFromUrl({
    required this.imageUrl,
    this.radius,
    this.height,
    this.width,
    this.fit,
    Key? key,
  }) : super(key: key);

  final String imageUrl;
  final double? radius;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 6),
      child: CachedNetworkImage(
        fit: fit ?? BoxFit.cover,
        imageUrl: imageUrl,
        placeholder: (context, url) {
          return Center(
            child: LoadingAnimationWidget.discreteCircle(
              color: Colors.white,
              size: 200,
            ),
          );
        },
        errorWidget: (context, url, dynamic error) {
          return Container(
            height: height ?? 60,
            width: width ?? 60,
            color: SystemColors.grey400,
            child: const Icon(Icons.error),
          );
        },
      ),
    );
  }
}
