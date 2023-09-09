// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final String tittle;
  final Widget? body;
  final Color? bgColor;
  const MyScaffold({super.key, required this.tittle, this.body, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          title: Text(
            tittle,
            style: const TextStyle(
                fontSize: 30,
                fontFamily: AutofillHints.birthday,
                fontWeight: FontWeight.bold),
          ),
          shadowColor: Colors.blueGrey,
          elevation: 10,
          centerTitle: true,
          backgroundColor: Colors.cyan),
      body: body,
    );
  }
}
