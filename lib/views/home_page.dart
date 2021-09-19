import 'package:navigation_app/ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AppProviderMixin<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  context.navigation.useCase1();
                },
                child: const Text('Use Case 1')),
            ElevatedButton(
                onPressed: () {
                  context.navigation.useCase2();
                  context.navigation.nul();
                },
                child: const Text('Use Case 2')),
            ElevatedButton(
                onPressed: () {
                  context.navigation.useCase3();
                },
                child: const Text('Use Case 3')),
            ElevatedButton(
                onPressed: () {
                  context.navigation.useCase4();
                },
                child: const Text('Use Case 4')),
            ElevatedButton(
                onPressed: () {
                  context.navigation.useCase5();
                },
                child: const Text('Use Case 5')),
            ElevatedButton(
                onPressed: () {
                  context.navigation.useCase6();
                },
                child: const Text('Use Case 6'))
          ],
        ),
      ),
    );
  }
}
