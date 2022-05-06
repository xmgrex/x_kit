<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Stop doing troublesome things.

## Features


## Getting started

```dart
import 'package:x_kit/x_kit.dart';
```

## Usage

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

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);
  
  @override Widget build(BuildContext context) {
    
    return Center(
      /// A simple placeholder that can be used to search all the hardcoded strings
      /// in the code (useful to identify strings that need to be localized).
        child: Text('title large'.hardcoded);
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

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
