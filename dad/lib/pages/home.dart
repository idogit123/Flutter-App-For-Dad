import 'package:flutter/material.dart';
import '../widgets/button.dart';
import '../widgets/page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DadPage(
      [
        DadButton("Employ", () {}),
        DadButton("Manager", () {}),
      ],
      heightFactor: .8,
    );
  }
}
