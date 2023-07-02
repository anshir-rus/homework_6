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
        primarySwatch: Colors.purple,
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
        title: Text('Text field styled'),
      ),
      body: Center(
        child: Container(
          child: SizedBox(
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple)),
                labelText: "Search",
                hintText: "Введите значение", //hint Text,
                hintStyle: TextStyle(fontSize: 15),
                helperText: "Поле для поиска заметок",
                suffixIcon: Icon(Icons.search),
              ),
            ),
            height: 70,
          ),
          padding: EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }
}
