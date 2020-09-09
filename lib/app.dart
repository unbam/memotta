import 'package:flutter/material.dart';

import 'blocs/flavor_provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final flavor = FlavorProvider.of(context);
    print(flavor.toString());

    return MaterialApp(
      home: Container(
        child: Text('Hello'),
      ),
    );
  }
}
