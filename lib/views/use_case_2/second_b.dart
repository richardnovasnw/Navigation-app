import 'package:flutter/material.dart';
import 'package:navigation_app/provider/provider_utils.dart';

class SecondB extends StatefulWidget {
  const SecondB({Key? key}) : super(key: key);

  @override
  _SecondBState createState() => _SecondBState();
}

class _SecondBState extends State<SecondB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen D'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.navigation.index(1);
          context.navigation.index(1);
        },
        child: const Text('B'),
      ),
      body: Container(
        color: Colors.white,
        child: const Center(child: Text('Screen D')),
      ),
    );
  }
}
