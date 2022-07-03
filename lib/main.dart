import 'package:flutter/material.dart';

import 'view/login/view/login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School Managment',
      home: LoginView(),
    );
  }
}
