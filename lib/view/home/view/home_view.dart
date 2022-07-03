import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:ogr_bil_sistemi/core/constants/image/image_enum.dart';

import 'package:ogr_bil_sistemi/product/widgets/card/card.dart';
import 'package:ogr_bil_sistemi/view/classDetail/view/class_detail_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  List<String> classList = [
    'Yazılım Mühendisliği',
    'Grafik Tasarım',
    'Yönetim Bil. Sis.',
    'İşletme Mühendisliği'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Bölümler',
        ),
      ),
      body: GestureDetector(
        onTap: () => context.navigateToPage(const ClassDetail()),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardWidget(
                    color: Colors.red.shade200,
                    branch: classList[0],
                    image: ImageEnums.student.toImage),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardWidget(
                    color: Colors.green.shade200,
                    branch: classList[1],
                    image: ImageEnums.student.toImage),
                CardWidget(
                    color: Colors.orange.shade200,
                    branch: classList[2],
                    image: ImageEnums.student.toImage),
              ],
            ),
            Row(
              children: [
                CardWidget(
                    color: Colors.yellow.shade200,
                    branch: classList[3],
                    image: ImageEnums.student.toImage),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
