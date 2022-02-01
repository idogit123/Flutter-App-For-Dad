import 'package:flutter/material.dart';

class DadButton extends StatelessWidget {
  final void Function() onPressed;
  final double height;
  final double widthFactor;
  final String text;
  final double fontSize;

  const DadButton(this.text, this.onPressed,
      {this.widthFactor = .85, this.height = 175, this.fontSize = 48, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: SizedBox(
        height: height,
        child: FractionallySizedBox(
          alignment: Alignment.center,
          widthFactor: widthFactor,
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: fontSize),
            ),
          ),
        ),
      ),
    );
  }
}
