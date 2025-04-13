import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textformfield extends StatelessWidget {
  String label;
  Widget icon;

  TextEditingController controller = TextEditingController();

  Textformfield(
      {required this.label, required this.controller, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: icon,
          label: Text(label),
          hintText: "enter your $label",
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          disabledBorder: OutlineInputBorder(
            borderRadius:
            0BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "please enter your $label";
          }
        },
      ),
    );
  }
}
