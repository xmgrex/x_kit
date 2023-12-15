import 'package:flutter/material.dart';
import 'package:x_kit/x_kit.dart';

class XTextExample extends StatelessWidget {
  const XTextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Default color is black.
          ///
          /// User as:
          /// Text("Hello!", styles: TextStyles.title.large.white);
          ///
          XText.largeTitle('title large'),
          XText.headline('headline'),
          XText.title1('title1'),
          XText.title2('title2'),
          XText.title3('title3'),
          XText.body('body'),
          XText.callOut('callOut'),
          XText.subHeadline('subHeadline'),

          XText.body('Change font color').setColor(Colors.amber),
          XText.body('Change font color').setColor(Colors.red),
          XText.body('Change font color').setColor(Colors.cyan),

          XText.headline('Bold Text').bold,

          Container(
            color: Colors.red,
            child: const XText('Color From Background1').colorFromBg(
              Colors.red,
            ),
          ),
          Container(
            color: Colors.cyan,
            child: const XText('Color From Background2').colorFromBg(
              Colors.cyan,
            ),
          ),
          Container(
            color: Colors.amber,
            child: const XText('Color From Background3').colorFromBg(
              Colors.amber,
            ),
          ),
          gapH64,
        ],
      ),
    );
  }
}
