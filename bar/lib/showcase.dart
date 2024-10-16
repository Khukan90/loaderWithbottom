import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CircleProgress extends StatelessWidget {
  CircleProgress({super.key});

  bool isload = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SpinKitCircle(
        itemBuilder: (context, index) {
          final Color = [Colors.redAccent, Colors.green];
          final dotcolor = Color[index % Color.length];
          return DecoratedBox(
            decoration: BoxDecoration(color: dotcolor, shape: BoxShape.circle),
          );
        },
      )),
    );
  }
}
