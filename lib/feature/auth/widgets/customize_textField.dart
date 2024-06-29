import 'package:flutter/material.dart';

class CustomizeTextField extends StatefulWidget {
  final Icon icon;
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const CustomizeTextField({
    super.key,
    required this.controller,
    required this.icon,
    required this.hintText,
    required this.obscureText
    });

  @override
  State<CustomizeTextField> createState() => _CustomizeTextFieldState();
}

class _CustomizeTextFieldState extends State<CustomizeTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration : InputDecoration(
        hintText: widget.hintText,
        prefixIcon: widget.icon,
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
         )
         
      ),      
      obscureText: widget.obscureText,
    );
}
}