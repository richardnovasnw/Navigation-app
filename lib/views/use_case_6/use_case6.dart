import 'package:flutter/material.dart';
import 'package:navigation_app/provider/provider_utils.dart';

class UseCase6 extends StatefulWidget {
  const UseCase6({Key? key}) : super(key: key);

  @override
  _UseCase6State createState() => _UseCase6State();
}

class _UseCase6State extends State<UseCase6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.navigation.useCase6B();
          },
          child: Text('B')),
      appBar: AppBar(
        title: const Text('Use Case 6'),
      ),
    );
  }
}
