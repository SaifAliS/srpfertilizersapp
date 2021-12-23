import 'package:flutter/material.dart';

class vari extends StatelessWidget {
  const vari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: new IconButton(
        icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text("వరి"),
      centerTitle: true,
    ));
  }
}
