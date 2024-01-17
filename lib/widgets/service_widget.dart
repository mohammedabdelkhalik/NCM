import 'package:flutter/material.dart';
import 'package:ncm/widgets/custom_text.dart';

class ServiceWidget extends StatelessWidget {
  final String text;
  final String status;
  final List<Color> colors;
  const ServiceWidget({
    Key? key,
    required this.text,
    required this.status,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          begin: const Alignment(0.86, -1.0),
          end: const Alignment(-0.8, 0.97),
          colors: colors,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          CustomText(
            text: text,
            color: Colors.white,
            size: 40,
            fontWeight: FontWeight.normal,
            alignment: Alignment.center,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          CustomText(
            text: status,
            color: Colors.white,
            size: 16,
            fontWeight: FontWeight.bold,
            alignment: Alignment.center,
            textAlign: TextAlign.start,
            padding: const EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}
