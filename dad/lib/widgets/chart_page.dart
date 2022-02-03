import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  final Function()? floatingButton;
  final Function()? groupButton;
  final Function()? employButton;
  const ChartPage(
      {this.floatingButton, this.groupButton, this.employButton, Key? key})
      : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Alarm Check")),
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          children: [
            Column(
              children: getListFromInfo(
                example,
                widget.groupButton,
                widget.employButton,
              ),
            ),
          ],
          padding: const EdgeInsets.only(top: 8, bottom: 16),
        ),
      ),
      floatingActionButton: widget.floatingButton == null
          ? null
          : SizedBox(
              width: 64,
              height: 64,
              child: FloatingActionButton(
                onPressed: widget.floatingButton,
                child: const Icon(
                  Icons.add_circle_outline_sharp,
                  size: 48,
                ),
              ),
            ),
    );
  }
}

List<Widget> getListFromInfo(
    List info, Function()? groupButton, Function()? employButton) {
  const TextStyle groupStyle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
    height: 1.5,
  );
  const TextStyle employStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    height: 1,
  );

  List<Widget> list = [];
  for (int i = 0; i < info.length; i++) {
    list.add(
      groupButton == null
          ? Text(info[i][0], style: groupStyle)
          : TextButton(
              child: Text(info[i][0], style: groupStyle),
              onPressed: groupButton,
            ),
    );

    for (int j = 1; j < info[i].length; j++) {
      list.add(
        employButton == null
            ? Text(info[i][j], style: employStyle)
            : TextButton(
                child: Text(info[i][j], style: employStyle),
                onPressed: employButton,
              ),
      );
    }
  }

  return list;
}

final List<List<String>> example = [
  [
    "department #1",
    "name #1",
    "name #2",
    "name #3",
    "name #4",
  ],
  [
    "department #2",
    "name #1",
    "name #2",
  ],
  [
    "department #3",
    "name #1",
    "name #2",
    "name #3",
  ],
  [
    "department #4",
    "name #1",
    "name #2",
    "name #3",
  ],
  [
    "department #5",
    "name #1",
    "name #2",
    "name #3",
  ],
  [
    "department #6",
    "name #1",
    "name #2",
    "name #3",
    "name #4",
  ],
  [
    "department #7",
    "name #1",
    "name #2",
  ],
  [
    "department #8",
    "name #1",
    "name #2",
    "name #3",
    "name #4",
  ],
];
