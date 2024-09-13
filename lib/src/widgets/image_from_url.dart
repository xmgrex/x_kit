part of widgets;


class ImageFromUrl extends StatelessWidget {
  const ImageFromUrl({
    required this.imageUrl,
    this.radius,
    this.height = 56,
    this.width = 56,
    this.fit,
    this.errorWidgetBackground,
    this.placeholder,
    this.errorWidget,
    Key? key,
  }) : super(key: key);

  final String imageUrl;
  final double? radius;
  final double height;
  final double width;
  final BoxFit? fit;
  final Color? errorWidgetBackground;
  final Widget Function(BuildContext, String)? placeholder;
  final Widget Function(BuildContext, String, Object)? errorWidget;

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty) {
      return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: errorWidgetBackground ?? Colors.grey[400],
          borderRadius: BorderRadius.circular(radius ?? 6),
        ),
        child: const Icon(Icons.error),
      );
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 6),
      child: CachedNetworkImage(
        fit: fit ?? BoxFit.cover,
        imageUrl: imageUrl,
        height: height,
        width: width,
        placeholder: placeholder ??
            (context, url) {
              return SizedBox(
                height: height,
                width: width,
                child: const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              );
            },
        errorWidget: errorWidget ?? (context, url, dynamic error) {
          return Container(
            height: height,
            width: width,
            color: errorWidgetBackground ?? Colors.grey[400],
            child: const Icon(Icons.error),
          );
        },
      ),
    );
  }
}
