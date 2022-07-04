import 'dart:math';
import 'package:flutter/material.dart';

class ColouredContainer extends StatefulWidget {
  const ColouredContainer({Key? key}) : super(key: key);

  @override
  State<ColouredContainer> createState() => _ColouredContainerState();
}

class _ColouredContainerState extends State<ColouredContainer> {

  late Color bgColor;

  @override
  void initState() {
    int r = Random().nextInt(256);
    int g = Random().nextInt(256);
    int b = Random().nextInt(256);
    bgColor = Color.fromRGBO(r, g, b, 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width : 100,
      height: 100,
      color: bgColor,
    );
  }
}
