import 'package:flutter/material.dart';

class verusenaga extends StatelessWidget {
  const verusenaga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/srp3.jpeg'),
          ],
        ))),
        appBar: AppBar(
      leading: new IconButton(
        icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text("వేరుశెనగ"),
      centerTitle: true,
    ));
  }
}
