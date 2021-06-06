import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {

  final IconData iconName;
  final Color containerColor;
  final Color buttonColor;
  final double buttonIconSize;
  final void Function() buttonAction;
  CircularButton({
    this.iconName,
    this.buttonIconSize,
    this.buttonAction,
    this.containerColor,
    this.buttonColor = Colors.black87,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: containerColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
          icon: Icon(iconName),
          color: buttonColor,
          iconSize: buttonIconSize,
          onPressed: buttonAction,
    ),
    );
  }
}
