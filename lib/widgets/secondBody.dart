import 'package:flutter/material.dart';

class SecondBody extends StatelessWidget {
  final width;
  final height;

  SecondBody({this.width, @required this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Second Page. If you squeeze the width of the browser window, something interesting will happen.',
          style: Theme.of(context)
              .textTheme
              .headline1
              .copyWith(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
