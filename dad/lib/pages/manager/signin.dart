import 'package:flutter/material.dart';
import '../../widgets/text_form_field.dart';
import '../../widgets/button.dart';
import '../../widgets/page.dart';

class ManagerSigninPage extends StatelessWidget {
  const ManagerSigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DadPage(
      [
        DadTextFormField("Team Name", (String? value) {}),
        DadTextFormField("Manager Code", (String? value) {}),
        DadButton("Confirm", () {}, height: 150)
      ],
      heightFactor: .7,
    );
  }
}
