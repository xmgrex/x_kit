import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    Key? key,
    required this.value,
    required this.data,
    this.loading,
    this.error,
  }) : super(key: key);
  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget Function()? loading;
  final Widget Function(Object, StackTrace?)? error;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return value.when(
      data: data,
      error: error ??
          (e, st) {
            return Center(
              child: Text(
                e.toString(),
                style: textTheme.headline6!.copyWith(color: Colors.red),
              ),
            );
          },
      loading: loading ??
          () {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          },
    );
  }
}
