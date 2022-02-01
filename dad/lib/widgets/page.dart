import 'package:flutter/material.dart';

class DadPage extends StatelessWidget {
  final List<Widget> children;
  final double heightFactor;

  const DadPage(this.children, {this.heightFactor = .9, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alarm Check"),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: FractionallySizedBox(
          alignment: Alignment.center,
          heightFactor: heightFactor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}
