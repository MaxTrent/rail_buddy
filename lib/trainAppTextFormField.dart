import 'package:flutter/material.dart';

class TrainTextFormField extends StatefulWidget {
  final TextEditingController controller;

  const TrainTextFormField({Key? key}) : super(key: key);

  @override
  State<TrainTextFormField> createState() => _TrainTextFormFieldState();
}

class _TrainTextFormFieldState extends State<TrainTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        // suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
        //hintText: hintText,
        fillColor: Theme.of(context).backgroundColor,
        filled: false,
        errorStyle: TextStyle(height: 0, color: Colors.transparent),
        hintStyle: TextStyle(
          fontSize: 16,
          color: Color(0xFF969A9D),
          fontWeight: FontWeight.w300,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Color(0xFF707070), width: .5)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Color(0xFF707070), width: .5)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Color(0xFF707070), width: .5)),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: Colors.red, width: .5),
        ),
      ),
      style: TextStyle(
        fontSize: 16,
        color: Color(0xFF3C3C43),

      ),
    );
  }
}
