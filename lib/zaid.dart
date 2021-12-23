import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:poornaapp/vari.dart';
import 'package:poornaapp/verusenaga.dart';

class zaid extends StatefulWidget {
  zaid({Key? key}) : super(key: key);

  @override
  _zaidState createState() => _zaidState();
}

class _zaidState extends State<zaid> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Scrollbar(
                isAlwaysShown: true,
                showTrackOnHover: true,
                hoverThickness: 30.0,
                child: ListView(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100.0),
                        child: Container(
                          height: 50,
                          child: DropDown(
                              items: ["వేరుశెనగ"],
                              hint: Text("పంట ఎంపిక"),
                              onChanged: (val) {
                                if (val == "వేరుశెనగ") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => verusenaga()));
                                }
                              }),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("జియాద్"),
          centerTitle: true,
        ),
      ),
    );
  }
}
