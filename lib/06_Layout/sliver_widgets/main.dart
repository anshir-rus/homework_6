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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Page title'),
              background: Container(
                child: Image.network(
                  'https://seanews.ru/wp-content/uploads/2019/07/nature_mountains_road_to_mountains_027284_-768x480.jpg',
                  fit: BoxFit.fill,
                  color: Colors.black.withOpacity(0.9),
                  colorBlendMode: BlendMode.color,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  child: Center(
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non sapien sed tellus sollicitudin dictum vitae et tellus. Aliquam scelerisque ut ex sit amet dictum. Nam dapibus nisl et ex suscipit, sit amet suscipit arcu volutpat. Duis consequat, nisi non semper ultrices, eros purus eleifend risus, aliquam tristique sapien urna eget ante. Nulla facilisi. Nam in porttitor odio, nec pulvinar justo. Donec dapibus, quam in sodales aliquam, nulla est ultricies risus, et pulvinar elit magna vitae leo. Nulla facilisi. Praesent venenatis ut felis vel ornare. Ut mauris leo, congue vitae varius ultrices, congue nec dolor. In in tempor est, vitae malesuada tortor. Phasellus placerat metus facilisis sem interdum venenatis. Praesent porta, odio sed luctus maximus, urna leo maximus neque, luctus elementum eros tortor sit amet lectus. Nam volutpat justo elit, non rutrum turpis luctus at. Curabitur ornare ultricies metus eu commodo. Nulla sodales lacinia sem.Vestibulum ullamcorper in nisl id viverra. Mauris at mattis nibh, sed sollicitudin risus. Donec eleifend lorem ac neque aliquam maximus. Aenean et dolor id ligula aliquam bibendum et a dui. Mauris eget finibus nibh. In pellentesque eros auctor tellus congue consequat. Suspendisse luctus libero vel consequat condimentum. Sed augue eros, cursus sit amet tristique quis, pulvinar ut urna. Cras cursus euismod eros id eleifend. Suspendisse potenti. Praesent quis imperdiet tellus. Sed blandit, mauris eget tristique pretium, lacus magna tempus elit, at vehicula turpis purus eu sapien. Nullam molestie ligula ut quam convallis, quis pharetra dui aliquam. Mauris sit amet ultrices ante. Vivamus fermentum diam sapien, ut varius nunc vehicula et. Ut eget augue ornare purus scelerisque tincidunt quis sit amet velit. Integer imperdiet mattis magna, eget sollicitudin metus euismod ut. Donec sagittis, nisi eget euismod placerat, leo libero finibus velit, sed auctor urna purus vel enim. Donec et dapibus dolor. Ut nec orci id tortor porttitor bibendum sit amet et mauris. In ut quam vestibulum, consectetur nunc congue, pharetra tellus. Etiam pellentesque commodo erat, nec semper metus tempus quis. Vivamus suscipit massa urna, nec porta eros tempor non. Donec sagittis dapibus ex, ut mattis mauris ornare vitae. Cras tincidunt dolor pellentesque erat scelerisque lobortis in et nisi. Maecenas quis semper lacus, quis tristique elit. Aenean gravida lorem mauris, vitae consectetur libero tincidunt hendrerit. Quisque felis lectus, pretium sodales semper at, scelerisque ut magna. Maecenas ac malesuada lorem. In hac habitasse platea dictumst. Nunc sit amet nisl orci. Praesent dui dui, imperdiet vulputate lacinia ac, gravida ut nibh. Quisque vulputate, neque at tincidunt semper, ante diam vehicula lectus, at tincidunt felis urna in neque. Praesent vel augue magna. Morbi mi turpis, hendrerit eu sollicitudin eget, gravida vitae nisi. Aenean feugiat non elit et congue. Nullam tincidunt libero sed nulla volutpat euismod. Duis sed orci magna. Vestibulum viverra nunc turpis, quis placerat leo consectetur eu. Phasellus vel lorem convallis, tempus erat at, condimentum urna. Curabitur interdum tempus massa lacinia sollicitudin. Nunc porttitor mi quis leo porta viverra.'),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
