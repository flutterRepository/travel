import 'package:flutter/material.dart';
import 'package:web_admin/web_admin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nimba',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // scaffoldBackgroundColor: kBgColor,
        canvasColor: kSecondaryColor,
      ),
      home: const HomeSreeen(),
    );
  }
}
