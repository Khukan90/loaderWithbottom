import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Lines extends StatelessWidget {
  const Lines({super.key});

  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.red : Colors.green,
        ),
      );
    });
  }
}
