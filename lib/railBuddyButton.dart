import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RailBuddyButton extends StatefulWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color backgroundColor;

  RailBuddyButton({
    required this.text, required this.onPressed, required this.color, required this.backgroundColor
});

  @override
  State<RailBuddyButton> createState() => _RailBuddyButtonState();
}

class _RailBuddyButtonState extends State<RailBuddyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){widget.onPressed;}, child: Text(widget.text, style:  Theme.of(context).textTheme.headline1!.copyWith(color: widget.color)),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(widget.backgroundColor)
      ),);
  }
}
