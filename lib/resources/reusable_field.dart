import 'package:flutter/material.dart';

import '../colors.dart';

class ReusableField extends StatelessWidget {
  final String hint;

  final TextEditingController? ctrl;
  final String? Function(String?)? validator;
  const ReusableField(
      {super.key, required this.hint, this.ctrl, this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: TextFormField(
          controller: ctrl,
          cursorColor: orange,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: highlight, fontSize: 15),
            fillColor: grey,
            filled: true,
            constraints: BoxConstraints(
              maxHeight: 50,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: grey, width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: yellow, width: 1)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: yellow, width: 1)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: yellow, width: 1)),
          ),
          validator: validator),
    );
  }
}
