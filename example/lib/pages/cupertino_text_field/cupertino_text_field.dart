import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_kit/x_kit.dart';

class CupertinoTextFieldTest extends StatelessWidget {
  const CupertinoTextFieldTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CupertinoTextField')),
      body: UnfocusOnTap(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 48.0,
                child: CupertinoTextField(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black38,
                    ),
                  ),
                  suffix: const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.list,
                      color: Colors.black38,
                    ),
                  ),
                  placeholder: 'Search',
                  // placeholderStyle: TextStyles.button.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 56.0,
                child: CupertinoTextField(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  suffix: const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black38,
                    ),
                  ),
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Icon(
                      Icons.list,
                      color: Colors.black38,
                    ),
                  ),
                  placeholder: 'Search',
                  // placeholderStyle: TextStyles.button.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
