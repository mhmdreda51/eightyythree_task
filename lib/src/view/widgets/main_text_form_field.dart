import 'package:flutter/material.dart';

class MainTextFormField extends StatelessWidget {
  const MainTextFormField({
    Key? key,
    required this.controller,
    required this.validator,
    this.hintText = "",
    required this.label,
    this.isPhone = false,
  }) : super(key: key);
  final TextEditingController controller;
  final Function validator;
  final String hintText;
  final String label;
  final bool isPhone;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) => validator(value),
      keyboardType: isPhone ? TextInputType.phone : TextInputType.text,
      cursorColor: Colors.brown,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.brown,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.brown,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black54),
          prefixIcon:const Icon(
            Icons.search,
            color: Colors.black,
          )
      ),
    );
  }
}
