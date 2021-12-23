import 'package:flutter/material.dart';
import 'Homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: HomeScreen(),
        appBar: AppBar(
          title: Text("అగ్రి దిశ"),
          centerTitle: true,
        ),
      ),
    );
  }
}
