import 'package:flutter/material.dart';
import 'package:x_kit/x_kit.dart';

class TextStyleExample extends StatelessWidget {
  const TextStyleExample({Key? key}) : super(key: key);

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
          Text('title large', style: TextStyles.title.large),
          Text('title medium', style: TextStyles.title),
          Text('title small', style: TextStyles.title.small),

          Text('label large', style: TextStyles.label.large),
          Text('label medium', style: TextStyles.label),
          Text('label small', style: TextStyles.label.small),

          Text('body large', style: TextStyles.body.large),
          Text('body medium', style: TextStyles.body),
          Text('body small', style: TextStyles.caption),

          Text('Change font color',
              style: TextStyles.caption.setColor(Colors.amber)),

          Text('On Theme Body Large',
              style: TextStyles.body.large.onTheme(context)),
          Text('On Theme Body Medium', style: TextStyles.body.onTheme(context)),
          Text('On Theme Body Small',
              style: TextStyles.body.small.onTheme(context)),

          Container(
            color: Colors.red,
            child: Text(
              'Color From Background1',
              style: TextStyles.body.colorFromBackground(Colors.red),
            ),
          ),
          Container(
            color: Colors.cyan,
            child: Text(
              'Color From Background2',
              style: TextStyles.body.colorFromBackground(Colors.cyan),
            ),
          ),
          Container(
            color: Colors.amber,
            child: Text(
              'Color From Background3',
              style: TextStyles.body.colorFromBackground(Colors.amber),
            ),
          ),
          gapH64,
          Text('Cupertino Style', style: CupertinoTextStyles.largeTitle),

          Text('body bold', style: CupertinoTextStyles.body.bold),
          Text('body regular', style: CupertinoTextStyles.body),

          Text('お届け先住所', style: CupertinoTextStyles.title2.bold),

          Text('これはCuertinoスタイルのテキストです。', style: CupertinoTextStyles.subHeadline),
          Text('これはCuertinoスタイルのテキストです。', style: CupertinoTextStyles.subHeadline.bold),
        ],
      ),
    );
  }
}
