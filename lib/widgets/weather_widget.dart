import 'package:flutter/material.dart';
import 'package:ncm/common/ui_helpers.dart';
import 'package:ncm/widgets/custom_text.dart';

class WeatherWidget extends StatelessWidget {
  final Widget icon;
  final String text;
  const WeatherWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          verticalSpaceTiny,
          CustomText(
            text: text,
            size: 14.0,
            color: Colors.white,
            letterSpacing: 0.28,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
