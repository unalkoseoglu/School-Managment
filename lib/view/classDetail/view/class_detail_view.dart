import 'package:flutter/material.dart';
import 'package:ogr_bil_sistemi/core/constants/image/image_enum.dart';

import 'package:ogr_bil_sistemi/product/widgets/card/card.dart';

class ClassDetail extends StatelessWidget {
  const ClassDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Row(
            children: [
              CardWidget(
                  color: Colors.blue.shade200,
                  studentName: 'Ahmet Şen',
                  image: ImageEnums.student.toImage),
            ],
          ),
        ),
      ),
    );
  }
}
