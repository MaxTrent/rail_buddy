import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrainTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;

  const TrainTextFormField({required this.controller, this.hintText});

  @override
  State<TrainTextFormField> createState() => _TrainTextFormFieldState();
}

class _TrainTextFormFieldState extends State<TrainTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        // suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
        //hintText: hintText,
        fillColor: Theme.of(context).backgroundColor,
        filled: false,
        hintText: widget.hintText,
        errorStyle: TextStyle(height: 0, color: Colors.red),
        hintStyle: TextStyle(
          fontSize: 16,
          color: Color(0xFF969A9D),
          fontWeight: FontWeight.w300,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Color(0xFF707070), width: 2)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Color(0xFF707070), width: 2)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Color(0xFF707070), width: 2)),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
      ),
      style: TextStyle(
        fontSize: 16,
        color: Color(0xFF3C3C43),

      ),
    );
  }
}
