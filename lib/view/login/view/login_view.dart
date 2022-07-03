import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:ogr_bil_sistemi/core/constants/image/image_enum.dart';

import 'package:ogr_bil_sistemi/product/widgets/button/elevated_button.dart';
import 'package:ogr_bil_sistemi/product/widgets/textField/text_field.dart';

import 'package:ogr_bil_sistemi/view/home/view/home_view.dart';
import 'package:ogr_bil_sistemi/view/login/viewModel/login_view_model.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final String university = 'Boğaziçi Üniversitesi';
  final String login = 'Giriş Yap';
  final String hintText2 = 'Şifre';
  final String hintText3 = 'Kullanıcı Adı';
  final userController = TextEditingController();
  final pswController = TextEditingController();
  late final LoginViewModel _loginViewModel;

  @override
  void initState() {
    super.initState();
    _loginViewModel = LoginViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: _loginViewModel,
        builder: (context, child) {
          return SafeArea(
              child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: Padding(
              padding: context.paddingMedium,
              child: Column(
                children: [
                  AnimatedContainer(
                      duration: context.durationLow,
                      height: context.isKeyBoardOpen
                          ? 0
                          : context.dynamicHeight(.3),
                      width: context.dynamicWidth(.3),
                      child: ImageEnums.education.toImage),
                  Text(university,
                      style: Theme.of(context).textTheme.headline4),
                  TextFieldWidget(
                      textController: userController,
                      hintText: hintText3,
                      icon: const Icon(Icons.person_outline)),
                  TextFieldWidget(
                      textController: pswController,
                      hintText: hintText2,
                      isPassword: true,
                      icon: const Icon(Icons.lock)),
                  ElevatedButtonWidget(
                    login: login,
                    onPress: () {
                      userController.text.length >= 5 &&
                              pswController.text.length >= 5
                          ? context.navigateToPage(HomeView())
                          : showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: const Text('Hatalı Giriş'),
                                    content: const Text(
                                        'Lütfen ukullanıcızı adınızı ve şifreyi giriniz.'),
                                    actions: <Widget>[
                                      TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const Text('Tamam'))
                                    ],
                                  ));
                    },
                  )
                ],
              ),
            ),
          ));
        });
  }
}
