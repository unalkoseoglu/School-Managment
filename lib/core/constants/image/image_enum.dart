import 'package:flutter/material.dart';

enum ImageEnums { education, student, student2 }

extension ImageEnumsExtension on ImageEnums {
  String get toPath => 'asset/images/ic_$name.png';

  Image get toImage => Image.asset(toPath);
}
