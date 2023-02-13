import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RailBuddyTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final BorderSide borderSide;
  final TextInputType keyboardType;
  bool obscure;

  RailBuddyTextFormField(
    
    {
      this.obscure = false,
    required this.controller,
    this.hintText,
    required this.borderSide,
    required this.keyboardType,
  });

  @override
  State<RailBuddyTextFormField> createState() => _RailBuddyTextFormFieldState();
}

class _RailBuddyTextFormFieldState extends State<RailBuddyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscure,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      decoration: InputDecoration(
        // suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
        //hintText: hintText,
        fillColor: Colors.grey.shade300,
        filled: true,
        hintText: widget.hintText,
        errorStyle: TextStyle(height: 0, color: Colors.red),
        hintStyle: TextStyle(
          fontSize: 16.sp,
          color: Color(0xFF969A9D),
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: widget.borderSide),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: widget.borderSide),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: widget.borderSide),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: widget.borderSide,
        ),
      ),
      style: TextStyle(
        fontSize: 16,
        color: Color(0xFF969A9D),
      ),
    );
  }
}
