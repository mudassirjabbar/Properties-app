import 'dart:ui';

import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool isPass;
  final TextInputType textInputType;

  const TextFieldInput({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.isPass,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    final InputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));

    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder,
          focusedBorder: InputBorder,
          enabledBorder: InputBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(8)),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}

// Location text field that is used in explore information file

class SearchField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType textInputType;

  const SearchField({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          hintStyle: const TextStyle(
            color: Color.fromRGBO(41, 42, 46, 0.6),
          ),
          suffixIcon: const Icon(
            Icons.search_outlined,
            size: 30,
            color: Color.fromRGBO(20, 14, 37, 0.6),
          ),
          filled: true,
          suffixIconColor: Colors.white,
          contentPadding: const EdgeInsets.all(20)),
      keyboardType: textInputType,
    );
  }
}

// textfield that is used to control range slider in explore information file and widget\\
// ................................................................................\\
class RangeTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType textInputType;

  const RangeTextField({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        height: 20,
        child: TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: const EdgeInsets.only(top: 10, left: 5),
            hintStyle: const TextStyle(
              color: Color.fromRGBO(20, 14, 37, 0.6),
              fontSize: 15,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Color.fromRGBO(20, 14, 37, 0.6),
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: Color.fromRGBO(20, 14, 37, 0.6),
                )),
            filled: false,
          ),
        ),
      ),
    );
  }
}
