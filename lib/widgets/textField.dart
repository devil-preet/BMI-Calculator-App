// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;

  final String? labelText;
  final String? hintText;
  final FaIcon? icon;

  const MyTextField(
      {super.key,
      this.labelText,
      this.hintText,
      required this.controller,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            suffixIcon: Padding(padding: const EdgeInsets.all(10), child: icon),
            suffixIconColor: Colors.blueGrey[400],
            suffixIconConstraints: const BoxConstraints(
              minWidth: 30,
              minHeight: 30,
              maxWidth: 50,
              maxHeight: 50,
            ),
            hintText: hintText,
            labelText: labelText,
            floatingLabelAlignment: FloatingLabelAlignment.center,
            enabled: true,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 2,
                )),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.cyan,
                width: 2,
              ),
            ),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.cyanAccent))));
  }
}
