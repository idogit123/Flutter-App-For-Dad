import 'package:flutter/material.dart';
import '../../widgets/chart_page.dart';

class ManagerMainPage extends StatelessWidget {
  const ManagerMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChartPage(
      floatingButton: () {},
      groupButton: () {},
      employButton: () {},
    );
  }
}
