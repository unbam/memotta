import 'package:flutter/material.dart';

import 'app.dart';
import 'blocs/flavor_provider.dart';

void main() {
  runApp(
    FlavorProvider(
      flavor: FlavorType.production,
      child: App(),
    ),
  );
}
