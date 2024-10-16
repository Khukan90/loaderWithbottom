import 'package:bar/lines.dart';
import 'package:bar/showcase.dart';
import 'package:flutter/material.dart';

import 'final_view.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isloder = false;
  bool isSuccss = false;

  @override
  Widget build(BuildContext context) => isloder
      ? CircleProgress()
      : Scaffold(
          appBar: AppBar(
            title: Text(widget.title ?? ''),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      isloder = true;
                    });
                    await Future.delayed(Duration(seconds: 3));
                    setState(() {
                      isloder = false;
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Successfull'),
                              content: Text("Your data Submited"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('OK'))
                              ],
                            );
                          });
                    });
                  },
                  child: Text('Loader'),
                ),
              )
            ],
          ));
}
