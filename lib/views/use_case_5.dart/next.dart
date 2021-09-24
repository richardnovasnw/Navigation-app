import 'package:flutter/material.dart';


class Next extends StatefulWidget {
  const Next({ Key? key }) : super(key: key);

  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Screen B'),
      ),
      body: Container(),
    );
  }
}