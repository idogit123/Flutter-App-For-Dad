import 'package:flutter/material.dart';
import '../../widgets/text_form_field.dart';
import '../../widgets/button.dart';
import '../../widgets/page.dart';

class EmployLoginPage extends StatelessWidget {
  const EmployLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DadPage(
      [
        DadTextFormField("Employ Name", (String? value) {}),
        DadTextFormField("Employ Code", (String? value) {}),
        DadButton("Confirm", () {}, height: 150)
      ],
      heightFactor: .7,
    );
  }
}
