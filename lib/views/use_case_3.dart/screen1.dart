import 'package:flutter/material.dart';
import 'package:navigation_app/provider/provider_utils.dart';

class ScreenAC3 extends StatefulWidget {
  const ScreenAC3({Key? key}) : super(key: key);

  @override
  _ScreenAC3State createState() => _ScreenAC3State();
}

class _ScreenAC3State extends State<ScreenAC3> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Use Case 3'),
              IconButton(
                  onPressed: () {
                    context.navigation.lock();
                    context.navigation.lock();
                  },
                  icon: Icon(Icons.lock_open))
            ],
          ),
        ),
        body: Container(
            child: TextFormField(
          onChanged: (v) {
            v = controller.text;
          },
          controller: controller,
        )));
  }
}
