import 'package:flutter/material.dart';

class CustomizeButton extends StatefulWidget {
  final String text;
  final VoidCallback onpressed;
  const CustomizeButton({super.key,
  required this.text,
  required this.onpressed});

  @override
  State<CustomizeButton> createState() => _CustomizeButtonState();
}

class _CustomizeButtonState extends State<CustomizeButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onpressed,
      child: Text(widget.text, style:const  TextStyle(
        fontSize: 16,
        color: Color.fromRGBO(0, 0, 0, 1), 
      )));
  }
}