import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'theme/constraints.dart';

class RailBuddyTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final BorderSide borderSide;
  final Color fillColor;
  bool obscure;

   RailBuddyTextFormField(
      {required this.controller,
      this.obscure = false,
      this.hintText,
      required this.borderSide,
      required this.fillColor,
      required TextInputType keyboardType});

  @override
  State<RailBuddyTextFormField> createState() => _RailBuddyTextFormFieldState();
}

class _RailBuddyTextFormFieldState extends State<RailBuddyTextFormField> {
  get obscure => widget.obscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      controller: widget.controller,
      style: TextStyle(color: Colors.grey),
      decoration: InputDecoration(
        fillColor: widget.fillColor,
        filled: true,
        hintText: widget.hintText,
        errorStyle: TextStyle(height: 0, color: Colors.red),
        hintStyle: TextStyle(
          fontSize: 16.sp,
          color: Color(0xFF969A9D),
          fontWeight: FontWeight.w300,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
