import 'package:flutter/material.dart';

import '../../constants/text_styles.dart';
import '../../utils/colors.dart';

class CustomButtonWidget extends StatefulWidget {
  String label;
  var width;
  Function onPressed;
  CustomButtonWidget(
      {super.key,
        required this.label,
        required this.width,
        required this.onPressed});

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}


class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          shadows: const [
            BoxShadow(
              color: Color(0x26FFFFFF),
              blurRadius: 0,
              offset: Offset(0, 0),
              spreadRadius: 4,
            )
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      child: TextButton(
        style: ButtonStyle(
            shadowColor: MaterialStatePropertyAll(Colors.white),
            foregroundColor: const MaterialStatePropertyAll(Colors.blueGrey),
            backgroundColor: const MaterialStatePropertyAll(white),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)))),
        onPressed: () {
          widget.onPressed();
        },
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Text(widget.label,
              style: buttonTextStyleLarge.copyWith(
                color: Color(0xff6D51E9)
              ),
              )),
        ),
      );
  }
}