import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'App',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Software engineering department'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // The title text which will be shown on the action bar
            title: Text(title),
            backgroundColor: Colors.yellow,
            centerTitle: true),
        body: Container(
          margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(children: [
            TextFormField(
                decoration: InputDecoration(
              hintText: 'Username',
              labelText: 'Username',
              labelStyle: TextStyle(color: Colors.black),
              icon: Icon(Icons.person),
            )),
            TextFormField(decoration: InputDecoration(hintText: 'First Name', labelText: 'First Name', labelStyle: TextStyle(color: Colors.black), border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)))),
            TextFormField(
                decoration: InputDecoration(
              hintText: 'Last Name',
              labelText: 'Last Name',
              labelStyle: TextStyle(color: Colors.black),
            )),
            TextFormField(
                decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.black),
            )),
            TextFormField(
                decoration: InputDecoration(
              hintText: 'Email',
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.black),
              icon: Icon(Icons.alternate_email_rounded),
            )),
            TextFormField(
                decoration: InputDecoration(
              hintText: 'Phone Number',
              labelText: 'Phone Number',
              labelStyle: TextStyle(color: Colors.black),
              icon: Icon(Icons.add_ic_call_sharp),
            )),
          ]),
        ));
  }
}
