import 'package:flutter/material.dart';
import 'package:github/core/components/size_config.dart';

class TextWidget extends StatelessWidget {
  Color? color;
  double size;
  String text;
   TextWidget({
     this.color,
     required this.size,
     required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: getW(size),
      ),
    );
  }
}
