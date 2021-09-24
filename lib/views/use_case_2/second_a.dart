import 'package:flutter/material.dart';
import 'package:navigation_app/provider/provider_utils.dart';

class SecondA extends StatefulWidget {
  const SecondA({Key? key}) : super(key: key);

  @override
  _SecondAState createState() => _SecondAState();
}

class _SecondAState extends State<SecondA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen D'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.navigation.index(0);
          context.navigation.index(0);
        },
        child: const Text('A'),
      ),
      body: const Center(child: Text('Screen D')),
    );
  }
}
