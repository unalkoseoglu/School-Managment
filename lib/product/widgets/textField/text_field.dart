import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    Key? key,
    required this.hintText,
    this.isPassword = false,
    required this.icon,
    this.textController,
  }) : super(key: key);
  final String hintText;
  final bool isPassword;
  final Icon icon;
  final textController;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingLow,
      child: TextField(
          controller: widget.textController,
          obscureText: widget.isPassword,
          decoration: InputDecoration(
              icon: widget.icon,
              hintText: widget.hintText,
              border: const OutlineInputBorder())),
    );
  }
}
