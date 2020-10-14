import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'blocs/flavor_provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final flavor = FlavorProvider.of(context);
    print(flavor.toString());

    // 非同期実行
    method();

    return MaterialApp(
      home: Container(
        child: Text('Hello'),
      ),
    );
  }

  Future<void> method() async {
    final cloudFunctions =
        CloudFunctions(app: FirebaseApp.instance, region: 'asia-northeast1');

    final callable =
        cloudFunctions.getHttpsCallable(functionName: 'helloWorld2');

    final result = await callable.call();
    print(result.data.toString());
  }
}
