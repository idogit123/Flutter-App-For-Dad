import 'package:flutter/material.dart';

class DadTextFormField extends StatelessWidget {
  final String name;
  final double widthFactor;
  final Function(String?) onSaved;
  final double fontSize;

  const DadTextFormField(this.name, this.onSaved,
      {this.widthFactor = .85, this.fontSize = 24, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widthFactor,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Enter $name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: "Poppins",
        ),
        onSaved: onSaved,
      ),
    );
  }
}
