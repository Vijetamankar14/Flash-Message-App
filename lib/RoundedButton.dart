import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  RoundedButtonWidget(
      {this.color = Colors.blue,
      this.title = "Hello",
      required this.onPressed});

  final Color color;
  final String title;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
