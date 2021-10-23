import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

int currentIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        leading: Text(
          "Leading",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        title: Center(child: Text("Title")),
        actions: [Text('Action1'), Text('Action2'), Text('Action3')],
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.amber,
            child: Image(
              image: AssetImage('assets/shiba.png'),
            ),
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
      //bottomNavigationBar: BottomNavigationBar(
      //     items: [BottomNavigationBar(icon: Icon(Icons.home), label: 'home')]),
    );
  }
}
