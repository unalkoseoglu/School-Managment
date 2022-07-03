import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ElevatedButtonWidget extends StatefulWidget {
  ElevatedButtonWidget({Key? key, required this.login, required this.onPress})
      : super(key: key);
  final String login;
  var onPress;

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //height: context.dynamicHeight(.1),
        padding: context.paddingLow,
        child: ElevatedButton(
            onPressed: widget.onPress,
            child: Center(child: Text(widget.login))));
  }
}
