import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:poornaapp/cheruku.dart';
import 'package:poornaapp/kharif.dart';

class rabi extends StatefulWidget {
  rabi({Key? key}) : super(key: key);

  @override
  _rabiState createState() => _rabiState();
}

class _rabiState extends State<rabi> {
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  bool showContainer = true;
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
                isAlwaysShown: _isAlwaysShown,
                showTrackOnHover: _showTrackOnHover,
                hoverThickness: 30.0,
                child: ListView(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100.0),
                        child: Container(
                          height: 50,
                          child: DropDown(
                              items: ["చెరుకు"],
                              hint: Text("పంట ఎంపిక"),
                              onChanged: (val) {
                                if (val == "చెరుకు") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => cheruku()));
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
          title: Text("రబీ"),
          centerTitle: true,
        ),
      ),
    );
  }
}
