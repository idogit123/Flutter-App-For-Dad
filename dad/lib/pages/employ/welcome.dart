import 'package:flutter/material.dart';
import '../../widgets/button.dart';
import '../../widgets/page.dart';

class EmployWelcomePage extends StatelessWidget {
  const EmployWelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DadPage(
      [
        DadButton("Log-In", () {}),
        DadButton("Sign-In", () {}),
      ],
      heightFactor: .8,
    );
  }
}
