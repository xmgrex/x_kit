import 'package:flutter/material.dart';
import 'package:x_kit/x_kit.dart';

class LoadingOverlayPage extends StatefulWidget {
  const LoadingOverlayPage({super.key});

  @override
  State<LoadingOverlayPage> createState() => _LoadingOverlayPageState();
}

class _LoadingOverlayPageState extends State<LoadingOverlayPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading Overlay'),
      ),
      body: LoadingOverlay(
        isLoading: isLoading,
        child: Center(
          child: ElevatedButton(
            onPressed: loading,
            child: const Text('Show Loading Overlay'),
          ),
        ),
      ),
    );
  }

  void loading() async {
    setState(() => isLoading = true);
    await Future.delayed(const Duration(seconds: 3));
    setState(() => isLoading = false);
  }
}
