import 'package:flutter/material.dart';
import 'package:x_kit/x_kit.dart';

class ModalBottomSheetPage extends StatelessWidget {
  const ModalBottomSheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleButton(
              height: 48,
              width: 200,
              label: 'show',
              onPressed: () {
                showPlatformModalBottomSheet(
                  widget: const Text('Sheet'),
                  context: context,
                );
              },
            ),
            const SizedBox(height: 12),
            ScaleButton(
              height: 48,
              width: 200,
              label: 'half',
              onPressed: () {
                showHalfModalBottomSheet(
                  widget: const Text('Sheet'),
                  context: context,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
