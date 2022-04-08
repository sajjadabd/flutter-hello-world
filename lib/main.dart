// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  bool snackBarHasShown = false;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void showSnackBar(ctx) {
    Scaffold.of(ctx).showSnackBar(
      SnackBar(
        content: Text('$counter'),
        duration: const Duration(milliseconds: 500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
          backgroundColor: Colors.blue[800],
        ),
        body: Container(
          color: Colors.white,
          width : double.infinity,
          height: double.infinity,
          child: Builder(
            builder: (ctx) => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 10),
                Container(
                  width : double.infinity,
                  color : Colors.grey[300],
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 40,
                      ),
                      child: Text(
                        'Counter: $counter',
                        style : const TextStyle(
                          fontSize : 40,
                          fontFamily: 'UbuntuBold',
                        )
                      ),
                    ),
                  ),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    color : Colors.blue[800],
                    onPressed: () {
                      incrementCounter();
                      showSnackBar(ctx);
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 30,
                      ),
                      child: Text(
                        'Increment',
                        style : TextStyle(
                          fontSize : 30,
                          color : Colors.white,
                          fontFamily: 'UbuntuBold',
                        )
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ]
            ),
          ),
        ),
        floatingActionButton: Builder(
          builder: (ctx) => FloatingActionButton(
                onPressed: () {
                  incrementCounter();
                  // ignore: avoid_print
                  print('counter : $counter');
                  // toast a message
                  showSnackBar(ctx);
                },
                child: const Icon(Icons.add),
                backgroundColor: Colors.blue[800],
            )
          ),
      )
    );
  }
}

