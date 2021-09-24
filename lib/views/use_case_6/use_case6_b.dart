import 'package:flutter/material.dart';

class UseCase6B extends StatefulWidget {
  const UseCase6B({Key? key}) : super(key: key);

  @override
  _UseCase6BState createState() => _UseCase6BState();
}

class _UseCase6BState extends State<UseCase6B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Use Case 6'),
      ),
      body: Center(
        child: TextFormField(
          autofocus: true,
        ),
      ),
    );
  }
}
