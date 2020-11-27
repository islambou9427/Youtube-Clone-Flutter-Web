import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey[900],
            ),
            child: Row(
              children: [
                Drawer(),
                Image.asset(),
                Positioned(child: TextField()),
                Icon(Icons.video_call),
                Icon(Icons.apps),
                Icon(Icons.notifications),
                Icon(Icons.person_pin)
              ],
            ),
          ),
          Expanded(
            child: Container(
              //height: MediaQuery.of(context).size.height * 0.11,
              color: Colors.blue,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.11,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
