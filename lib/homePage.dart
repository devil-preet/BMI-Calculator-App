// ignore_for_file: file_names, unused_import
// import 'package:bmi/main.dart';
// import 'package:bmi/widgets/myScaffold.dart';
// import 'package:bmi/widgets/textField.dart';
// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var wt = TextEditingController();
//   var ft = TextEditingController();
//   var inch = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return MyScaffold(
//         tittle: "BMI CALCULATOR",
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width: 300,
//               height: 300,
//               color: Colors.cyan[100],
//               child: Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       MyTextField(
//                         controller: wt,
//                         labelText: "Enter your weight in kg",
//                       ),
//                       const Divider(
//                         color: Colors.transparent,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           MyTextField(
//                             controller: ft,
//                             hintText: "feet",
//                           ),
//                           MyTextField(
//                             controller: inch,
//                             hintText: "inch",
//                           ),
//                         ],
//                       )
//                     ]),
//               ),
//             ),
//           ],
//         ));
//   }
// }
