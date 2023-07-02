import 'package:flutter/material.dart';

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
      body: SafeArea(
          child: ListView.separated(
              scrollDirection: MediaQuery.of(context).size.width < 500
                  ? Axis.horizontal
                  : Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: 70,
                    width: 70,
                    child: Container(
                      color: Color.fromRGBO(
                          100 + index, 200 + index, 100 + index, 1),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                    thickness: 2,
                  ),
              itemCount: 30)),
    );
  }
}
