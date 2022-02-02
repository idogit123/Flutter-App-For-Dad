import 'package:flutter/material.dart';

List<Text> getListFromInfo(List<String> info) {
  const TextStyle groupStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    letterSpacing: 3,
  );
  const TextStyle employStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 1,
  );
  const List<Text> list = [];
  for (int i = 0; i < info.length; i++) {
    list.add(Text(info[i][0], style: groupStyle));
    for (int j = 1; j < info[i].length; j++) {
      list.add(Text(info[i][j], style: employStyle));
    }
  }
  return list;
}

// final Object example = [
//   [
//     "department #1",
//     "name #1",
//     "name #2",
//     "name #3",
//     "name #4",
//   ],
//   [
//     "department #2",
//     "name #1",
//     "name #2",
//   ],
//   [
//     "department #3",
//     "name #1",
//     "name #2",
//     "name #3",
//   ],
// ];
