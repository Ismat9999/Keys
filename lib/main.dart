import 'package:flutter/material.dart';
import 'package:valuekey/globalkey2_page.dart';
import 'package:valuekey/globalkey_page.dart';
import 'package:valuekey/objectkey_page.dart';
import 'package:valuekey/pages/uniquekey_page.dart';
import 'package:valuekey/pages/valuekey_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GlobalkeyPage(),
    );
  }
}

