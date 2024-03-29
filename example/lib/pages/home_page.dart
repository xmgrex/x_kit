import 'package:example/pages/cupertino_text_field/cupertino_text_field.dart';
import 'package:example/pages/loading_overlay/loading_overlay_page.dart';
import 'package:example/pages/text_style/text_styles_page.dart';
import 'package:example/pages/text_style/x_text_page.dart';
import 'package:flutter/material.dart';
import 'package:example/cool_toolbar/items.dart';
import 'package:x_kit/x_kit.dart';

const pages = [
  XTextExample(),
  TextStyleExample(),
  // ModalBottomSheetPage(),
  CupertinoTextFieldTest(),
  LoadingOverlayPage(),
  SizedBox(child: Text('1')),
  SizedBox(child: Text('2')),
  SizedBox(child: Text('3')),
  SizedBox(child: Text('4')),
  SizedBox(child: Text('5')),
  SizedBox(child: Text('6')),
  SizedBox(child: Text('7')),
];


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double position = -100;
  bool isOpen = false;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              setState(() => isOpen = !isOpen);
            },
            icon: const Icon(Icons.menu)),
      ),
      body: Stack(
        children: [
          IndexedStack(
            index: selectedIndex,
            children: pages,
          ),
          AnimatedPositioned(
            left: isOpen ? 4 : -80,
            curve: Curves.easeOutCirc,
            duration: const Duration(milliseconds: 400),
            child: CoolToolbar(
              toolbarItems: toolbarItems,
              onTap: (index) {
                setState(() => selectedIndex = index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
