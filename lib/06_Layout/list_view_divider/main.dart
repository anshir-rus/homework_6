import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view divider'),
      ),
      body: Center(
        child: ListView.separated(
          itemCount: 50,
          separatorBuilder: (BuildContext context, int index) => const Divider(
            thickness: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('$index'),
            );
          },
        ),
      ),
    );
  }
}
