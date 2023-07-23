A collection of convenient widgets and utils

## Getting started

```yaml
# pub get
  x_kit:
    git:
      url: https://github.com/xmgrex/x_kit
```

```dart
import 'package:x_kit/x_kit.dart';
```

## Examples

[comment]: <> (TODO: Include short and useful examples for package users. Add longer examples)
[comment]: <> (to `/example` folder. )

`Example for TextStyles.`
```dart
import 'package:flutter/material.dart';
import 'package:x_kits/x_kits.dart';

class TextStyleExample extends StatelessWidget {
  const TextStyleExample({Key? key}) : super(key: key);
  
  @override Widget build(BuildContext context) {
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
      ],
    );
  }
}
```

`Example for hardcoded`
```dart
import 'package:x_kits/x_kits.dart';

class HardcodedExample extends StatelessWidget {
  const HardcodedExample({Key? key}) : super(key: key);
  
  @override Widget build(BuildContext context) {
    
    return Center(
      /// A simple placeholder that can be used to search all the hardcoded strings
      /// in the code (useful to identify strings that need to be localized).
        child: Text('Never going back. I am Going much harder'.hardcoded);
    );
  }
}
```

`Example for AsyncValueUI`
```dart
import 'package:x_kits/x_kits.dart';
import 'package: flutter_riverpod/flutter_riverpod.dart'

ref.listen<AsyncValue>(
  stateNotifirePorvider.select((state) => state.value),
  (_, state) => state.showAlertDialogOnError(context),
);
```
