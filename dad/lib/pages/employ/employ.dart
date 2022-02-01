import 'package:flutter/material.dart';
import '../../widgets/button.dart';
import '../../widgets/page.dart';

class EmployMainPage extends StatefulWidget {
  const EmployMainPage({Key? key}) : super(key: key);

  @override
  State<EmployMainPage> createState() => _EmployMainPageState();
}

class _EmployMainPageState extends State<EmployMainPage> {
  bool isConfirmed = true;

  @override
  Widget build(BuildContext context) {
    return DadPage(
      [
        DadButton(
          isConfirmed ? "Cancel" : "Confirm",
          () {
            setState(
              () {
                isConfirmed = !isConfirmed;
              },
            );
          },
        ),
        DadButton("View Chart", () {})
      ],
      heightFactor: .8,
    );
  }
}
