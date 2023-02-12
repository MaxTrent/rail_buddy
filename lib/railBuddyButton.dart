import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RailBuddyButton extends StatefulWidget {
  final String text;

  RailBuddyButton({
    required this.text
});

  @override
  State<RailBuddyButton> createState() => _RailBuddyButtonState();
}

class _RailBuddyButtonState extends State<RailBuddyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child: Text(widget.text, style: TextStyle(
      fontSize: 16.sp,
    ),),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent)
      ),);
  }
}
