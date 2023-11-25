import 'dart:math' show pi;
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/resources_app/color_manager.dart';

class QiblahCompassWidget extends StatelessWidget {
  final _kaabaSvg = SvgPicture.asset('assets/images/4.svg');

  QiblahCompassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var platformBrightness = Theme.of(context).brightness;
    return StreamBuilder(
      stream: FlutterQiblah.qiblahStream,
      builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        final qiblahDirection = snapshot.data;
        var angle = ((qiblahDirection?.qiblah ?? 0) * (pi / 180) * -1);

        // if (_angle < 5 && _angle > -5) print('IN RANGE');

        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Transform.rotate(
              angle: angle,
              child: SvgPicture.asset('assets/images/5.svg', // compass
                  color: platformBrightness == Brightness.dark
                      ? Colors.yellow
                      : ColorManager.primary),
            ),
            _kaabaSvg,
            SvgPicture.asset(
              'assets/images/3.svg', //needle
              color: platformBrightness == Brightness.dark
                  ? Colors.yellow
                  : ColorManager.primary,
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "قم بمحاذاة رأس السهم\nلا تضع الجهاز بالقرب من جسم معدني.\nقم بمعايرة البوصلة في أي وقت تستخدمه.",
                textAlign: TextAlign.center,
              ),
            )
          ],
        );
      },
    );
  }
}
