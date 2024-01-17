// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

import 'package:ncm/common/app_colors.dart';
import 'package:ncm/common/ui_helpers.dart';
import 'package:ncm/gen/assets.gen.dart';
import 'package:ncm/widgets/custom_appbar.dart';
import 'package:ncm/widgets/custom_text.dart';
import 'package:ncm/widgets/service_widget.dart';
import 'package:ncm/widgets/weather_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: ColorsApp.mainColor.withOpacity(0.5),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Assets.images.bg.image(fit: BoxFit.cover),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Container(
                color: ColorsApp.mainColor.withOpacity(0.1),
                alignment: Alignment.center,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: const CustomAppBar(),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpaceSmall,
                    const CustomText(
                      text: 'Hi,',
                      size: 25.0,
                      color: Colors.white,
                      letterSpacing: 0.72,
                      fontWeight: FontWeight.w700,
                    ),
                    verticalSpaceTiny,
                    const CustomText(
                      text: 'Welcome User',
                      size: 16.0,
                      color: Colors.white,
                      letterSpacing: 0.72,
                      fontWeight: FontWeight.w700,
                    ),
                    verticalSpaceSmall,
                    verticalSpaceTiny,
                    BlurryContainer(
                      width: double.infinity,
                      blur: 6,
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CustomText(
                            text: 'Wednesday, August 06',
                            size: 15.0,
                            color: Colors.white,
                            letterSpacing: 0.3,
                            textAlign: TextAlign.center,
                          ),
                          verticalSpaceTiny,
                          const CustomText(
                            text: 'Riyadh, Saudi Arabia',
                            size: 19.0,
                            color: Colors.white,
                            letterSpacing: 0.3,
                            fontWeight: FontWeight.w700,
                            textAlign: TextAlign.center,
                          ),
                          verticalSpaceTiny,
                          Center(child: Assets.svg.mainIcon.svg(width: 60)),
                          const CustomText(
                            text: 'Partly Cloud',
                            size: 12.0,
                            color: Colors.white,
                            letterSpacing: 0.3,
                            textAlign: TextAlign.center,
                            padding: EdgeInsets.all(10),
                          ),
                          const CustomText(
                            text: '27',
                            size: 30.0,
                            color: Colors.white,
                            letterSpacing: 0.3,
                            textAlign: TextAlign.center,
                          ),
                          verticalSpaceSmall,
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                WeatherWidget(icon: Assets.svg.moon.svg(), text: 'THU'),
                                WeatherWidget(icon: Assets.svg.moon.svg(), text: 'FRI'),
                                WeatherWidget(icon: Assets.svg.windMoon.svg(), text: 'SAT'),
                                WeatherWidget(icon: Assets.svg.wind.svg(), text: 'SUN'),
                                WeatherWidget(icon: Assets.svg.rain.svg(), text: 'MON'),
                                WeatherWidget(icon: Assets.svg.electric.svg(), text: 'TUE'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceSmall,
                    const Row(
                      children: [
                        Expanded(
                          child: ServiceWidget(
                            colors: [Color(0xFF45B0FF), Color(0xFF486EFF)],
                            status: 'Service Applied',
                            text: '53',
                          ),
                        ),
                        horizontalSpaceSmall,
                        Expanded(
                          child: ServiceWidget(
                            colors: [Color(0xFF4FE067), Color(0xFF4ED3AB)],
                            status: 'Service Approved',
                            text: '33',
                          ),
                        ),
                        horizontalSpaceSmall,
                        Expanded(
                          child: ServiceWidget(
                            colors: [Color(0xFFFACB23), Color(0xFFFF6F38)],
                            status: 'Service Rejected',
                            text: '20',
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Services',
                          size: 26.0,
                          color: Colors.white,
                          letterSpacing: 0.52,
                          fontWeight: FontWeight.w700,
                        ),
                        CustomText(
                          text: 'View All',
                          size: 15.0,
                          color: Colors.white,
                          letterSpacing: 0.52,
                        ),
                      ],
                    ),
                    verticalSpaceTiny,
                    BlurryContainer(
                      width: double.infinity,
                      blur: 6,
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(20),
                            child: Assets.svg.icon1.svg(height: 40),
                          ),
                          horizontalSpaceSmall,
                          const CustomText(
                            text: 'Climate data request',
                            size: 16.0,
                            color: Colors.white,
                            letterSpacing: 0.3,
                            fontWeight: FontWeight.w700,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceSmall,
                    BlurryContainer(
                      width: double.infinity,
                      blur: 6,
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(20),
                            child: Assets.svg.icon2.svg(height: 40),
                          ),
                          horizontalSpaceSmall,
                          const CustomText(
                            text: 'Request a weather report',
                            size: 16.0,
                            color: Colors.white,
                            letterSpacing: 0.3,
                            fontWeight: FontWeight.w700,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceSmall,
                    BlurryContainer(
                      width: double.infinity,
                      blur: 6,
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(20),
                            child: Assets.svg.icon3.svg(height: 40),
                          ),
                          horizontalSpaceSmall,
                          const CustomText(
                            text: 'Free forecast report request',
                            size: 16.0,
                            color: Colors.white,
                            letterSpacing: 0.3,
                            fontWeight: FontWeight.w700,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceMassive
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
