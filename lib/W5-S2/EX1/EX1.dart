//Method1 : loop in array
// import 'package:flutter/material.dart';
// List<String> colors = ["red", "blue", "green"];
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//           body: Column(
//         children: [
//           for (var color in colors ) Text(color),
//         ],
//       )),
//     ),
//   );
// }

//Method2 : Map

// import 'package:flutter/material.dart';

// List<String> colors = ["Red", "Blue", "Green"];
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             ...colors.map((color) => Text(color)).toList(),
//           ],
//         ),
//       ),
//     ),
//   );
// }

//Method3 : Dedicated function

// import 'package:flutter/material.dart';

// List<String> colors = ["RED", "BLUE", "GREEN"];

// List<Widget> getColorWidgets() {
//   return colors.map((color) => Text(color)).toList();
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             ...getColorWidgets(),
//           ],
//         ),
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';

List<String> colors = ["red", "blue", "green"];
List<Widget> getColorWidgets() {
  return colors.map((color) => Text(color)).toList();
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                children: [
                  const Text('Method1 : Loop in Array'),
                  for (var color in colors) Text(color),
                ],
              ),
              Column(
                children: [
                  const Text('Method2 : Map'),
                  ...colors.map((color) => Text(color)).toList(),
                ],
              ),
              Column(
                children: [
                  const Text('Method3 : Dedicated function'),
                  ...getColorWidgets(),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  ));
}
