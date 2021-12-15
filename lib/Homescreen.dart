import 'dart:collection';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  get item => null;

  @override
  Widget build(BuildContext context) {
    var items;
    var _values;
    return Scaffold(
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
                    SizedBox(height: 20),
                    CircleAvatar(
                      radius: 50.0,
                      child: ClipRRect(
                        child: Image.network(
                            'https://static.remove.bg/remove-bg-web/dc31eaf79444b51662da45dcd6cf26fcda20b5dd/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg'),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
                      child: DropdownButton(
                          value: _values,
                          items: [
                            DropdownMenuItem(
                              child: Text("First Item"),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text("Second Item"),
                              value: 2,
                            ),
                            DropdownMenuItem(
                                child: Text("Third Item"), value: 3),
                            DropdownMenuItem(
                                child: Text("Fourth Item"), value: 4)
                          ],
                          onChanged: (value) {
                            setState(() {
                              _values = value;
                            });
                          }),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
