import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:poornaapp/kharif.dart';
import 'package:poornaapp/rabi.dart';
import 'package:poornaapp/zaid.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  bool showContainer = true;

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
                        child: Image.asset('assets/logo.jpg'),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("ఎంచుకోండి"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100.0),
                      child: Container(
                        height: 50,
                        child: DropDown(
                          items: ["తెలుగు"],
                          hint: Text("భాష ఎంపిక"),

                          // showUnderline: false,
                          icon: Icon(
                            Icons.expand_more,
                            color: Colors.blue,
                          ),
                          onChanged: (val) {},
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100.0),
                      child: Container(
                        height: 50,
                        child: DropDown(
                          items: ["చిత్తూరు"],
                          hint: Text("జిల్లా ఎంపిక"),

                          // showUnderline: false,
                          icon: Icon(
                            Icons.expand_more,
                            color: Colors.blue,
                          ),
                          onChanged: (val) {},
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100.0),
                      child: Container(
                        height: 50,
                        child: DropDown(
                          items: ["చంద్రగిరి"],
                          hint: Text("మండల ఎంపిక"),

                          // showUnderline: false,
                          icon: Icon(
                            Icons.expand_more,
                            color: Colors.blue,
                          ),
                          onChanged: (val) {},
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100.0),
                      child: Container(
                        height: 50,
                        child: DropDown(
                          items: ["తనపల్లె"],
                          hint: Text("గ్రామం ఎంపిక"),

                          // showUnderline: false,
                          icon: Icon(
                            Icons.expand_more,
                            color: Colors.blue,
                          ),
                          onChanged: (val) {},
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100.0),
                      child: Container(
                        height: 50,
                        child: DropDown(
                          items: ["నల్ల రేగడి నేల"],
                          hint: Text("నేల ఎంపిక"),

                          // showUnderline: false,
                          icon: Icon(
                            Icons.expand_more,
                            color: Colors.blue,
                          ),
                          onChanged: (val) {},
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100.0),
                      child: Container(
                        height: 50,
                        child: DropDown(
                          items: ["రబీ", "ఖరీఫ్", "జియాద్"],
                          hint: Text("బుతువు ఎంపిక"),

                          // showUnderline: false,
                          icon: Icon(
                            Icons.expand_more,
                            color: Colors.blue,
                          ),
                          onChanged: (val) {
                            if (val == "రబీ") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => rabi()));
                            } else if (val == "ఖరీఫ్") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => kharif()));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => zaid()));
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
