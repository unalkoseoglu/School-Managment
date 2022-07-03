import 'package:flutter/foundation.dart';

class LoginViewModel extends ChangeNotifier {
  bool isLoginCheck = false;

  void loginPressed(bool value) {
    isLoginCheck = value;
    notifyListeners();
  }
}
