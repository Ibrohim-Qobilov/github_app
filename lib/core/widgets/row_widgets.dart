import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github/core/components/size_config.dart';
import 'package:github/core/widgets/text_widgets.dart';

class IconTextWidgets extends StatelessWidget {
  Widget icon;
  String text;
  IconTextWidgets({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Padding(
          padding: EdgeInsets.only(left: getW(4.0)),
          child: TextWidget(
            size: 10.0,
            text: text,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
