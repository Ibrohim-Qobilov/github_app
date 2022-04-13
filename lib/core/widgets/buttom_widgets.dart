// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:github/core/components/size_config.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  VoidCallback onPressed;
  Color? color;
  double height;
  double weight;
  String text;
  ButtonWidget({
    required this.onPressed,
    this.color,
    required this.height,
    required this.weight,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          getW(weight),
          getH(height),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getW(70))),
        primary: color,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: getW(17.0)),
      ),
    );
  }
}
