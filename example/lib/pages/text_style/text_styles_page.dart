import 'package:flutter/material.dart';
import 'package:x_kit/x_kit.dart';

class TextStyleExample extends StatelessWidget {
  const TextStyleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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

        Text('Change font color', style: TextStyles.caption.setColor(Colors.amber)),

        Text('body small', style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
