import 'package:crud/src/page/list_page.dart';
import 'package:crud/src/page/save_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: "/",
      routes: {
        // ignore: prefer_const_constructors
        ListPage.ROUTE: (_) => ListPage(),
        // ignore: equal_keys_in_map
        ListPage.ROUTE: (_) => SavePage()
      },  
    );
  }
}