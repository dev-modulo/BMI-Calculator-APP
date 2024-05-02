import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      // ++ For Circle Button
      shape: CircleBorder(),
      // ++ For Rounded RectangleButton
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

