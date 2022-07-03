import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.color,
    this.branch,
    required this.image,
    this.student,
    this.studentName,
  }) : super(key: key);
  final Color color;
  final String? branch;
  final Image image;
  final String? student;
  final String? studentName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: context.paddingLow,
        child: Container(
          padding: context.paddingLow,
          height: context.dynamicHeight(.2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: color),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: context.dynamicHeight(.08), child: image),
              Text(
                branch ?? studentName ?? '',
                style: context.textTheme.headline6,
              ),
              Text(student ?? ' ')
            ],
          ),
        ),
      ),
    );
  }
}
