import 'package:flutter/material.dart';

class cheruku extends StatelessWidget {
  const cheruku({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 10,
              child: Image.asset('assets/srp1.jpeg'),
            ),
            Card(
              elevation: 10,
              child: Image.asset('assets/srp2.jpeg'),
            ),
            Card(
              elevation: 10,
              child: Image.asset('assets/srp3.jpeg'),
            ),
          ],
        )),
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("చెరుకు"),
          centerTitle: true,
        ));
  }
}
