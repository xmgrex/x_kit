import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ImageFromUrl extends StatelessWidget {
  const ImageFromUrl({
    required this.imageUrl,
    this.radius,
    this.height = 56,
    this.width = 56,
    this.fit,
    Key? key,
  }) : super(key: key);

  final String imageUrl;
  final double? radius;
  final double height;
  final double width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 6),
      child: CachedNetworkImage(
        fit: fit ?? BoxFit.cover,
        imageUrl: imageUrl,
        height: height,
        width: width,
        placeholder: (context, url) {
          return SizedBox(
            height: height,
            width: width,
            child: Center(
              child: LoadingAnimationWidget.fourRotatingDots(
                color: Theme.of(context).colorScheme.onBackground,
                size: 28,
              ),
            ),
          );
        },
        errorWidget: (context, url, dynamic error) {
          return Container(
            height: height,
            width: width,
            color: Colors.grey[400],
            child: const Icon(Icons.error),
          );
        },
      ),
    );
  }
}
