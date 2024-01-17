// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'package:ncm/common/app_colors.dart';
import 'package:ncm/common/ui_helpers.dart';
import 'package:ncm/gen/assets.gen.dart';
import 'package:ncm/widgets/custom_appbar.dart';
import 'package:ncm/widgets/custom_field.dart';
import 'package:ncm/widgets/custom_text.dart';
import 'package:ncm/widgets/weather_widget.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

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
                      text: 'Apply',
                      size: 25.0,
                      color: Colors.white,
                      letterSpacing: 0.72,
                      fontWeight: FontWeight.w700,
                    ),
                    verticalSpaceTiny,
                    const CustomText(
                      text: 'Climate Data Request',
                      size: 16.0,
                      color: Colors.white,
                      letterSpacing: 0.72,
                      fontWeight: FontWeight.w700,
                    ),
                    verticalSpaceSmall,
                    BlurryContainer(
                      width: double.infinity,
                      blur: 6,
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpaceTiny,
                          ExpandablePanel(
                            theme: const ExpandableThemeData(
                              headerAlignment: ExpandablePanelHeaderAlignment.center,
                              tapBodyToExpand: true,
                              tapBodyToCollapse: true,
                              hasIcon: true,
                              expandIcon: Icons.add,
                              iconColor: Colors.white,
                              collapseIcon: Icons.remove,
                            ),
                            header: const CustomText(
                              text: "Station Details",
                              color: Colors.white,
                              letterSpacing: 0.3,
                              textAlign: TextAlign.start,
                              padding: EdgeInsets.all(10),
                            ),
                            collapsed: Container(),
                            expanded: Column(
                              children: [
                                CheckboxListTile(
                                  value: true,
                                  onChanged: (e) {},
                                  activeColor: ColorsApp.checkColor,
                                  controlAffinity: ListTileControlAffinity.leading,
                                  title: CustomText(
                                    text: 'Weather station under construction',
                                    size: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                CheckboxListTile(
                                  value: false,
                                  onChanged: (e) {},
                                  controlAffinity: ListTileControlAffinity.leading,
                                  title: CustomText(
                                    text: 'Weather station under construction',
                                    size: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                const CustomField(obscureText: false, text: 'Station classification'),
                                verticalSpaceSmall,
                                const CustomField(obscureText: false, text: 'Station class'),
                                verticalSpaceSmall,
                                const CustomField(obscureText: false, text: 'Proposed station location'),
                              ],
                            ),
                          ),
                          verticalSpaceTiny,
                          ExpandablePanel(
                            theme: const ExpandableThemeData(
                              headerAlignment: ExpandablePanelHeaderAlignment.center,
                              tapBodyToExpand: true,
                              tapBodyToCollapse: true,
                              hasIcon: true,
                              expandIcon: Icons.add,
                              iconColor: Colors.white,
                              collapseIcon: Icons.remove,
                            ),
                            header: const CustomText(
                              text: "Station Details",
                              color: Colors.white,
                              letterSpacing: 0.3,
                              textAlign: TextAlign.start,
                              padding: EdgeInsets.all(10),
                            ),
                            collapsed: Container(),
                            expanded: Column(
                              children: [
                                CheckboxListTile(
                                  value: true,
                                  onChanged: (e) {},
                                  activeColor: ColorsApp.checkColor,
                                  controlAffinity: ListTileControlAffinity.leading,
                                  title: CustomText(
                                    text: 'Weather station under construction',
                                    size: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                CheckboxListTile(
                                  value: false,
                                  onChanged: (e) {},
                                  controlAffinity: ListTileControlAffinity.leading,
                                  title: CustomText(
                                    text: 'Weather station under construction',
                                    size: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                const CustomField(obscureText: false, text: 'Station classification'),
                                verticalSpaceSmall,
                                const CustomField(obscureText: false, text: 'Station class'),
                                verticalSpaceSmall,
                                const CustomField(obscureText: false, text: 'Proposed station location'),
                              ],
                            ),
                          ),
                          verticalSpaceTiny,
                          ExpandablePanel(
                            theme: const ExpandableThemeData(
                              headerAlignment: ExpandablePanelHeaderAlignment.center,
                              tapBodyToExpand: true,
                              tapBodyToCollapse: true,
                              hasIcon: true,
                              expandIcon: Icons.add,
                              iconColor: Colors.white,
                              collapseIcon: Icons.remove,
                            ),
                            header: const CustomText(
                              text: "Station Details",
                              color: Colors.white,
                              letterSpacing: 0.3,
                              textAlign: TextAlign.start,
                              padding: EdgeInsets.all(10),
                            ),
                            collapsed: Container(),
                            expanded: Column(
                              children: [
                                CheckboxListTile(
                                  value: true,
                                  onChanged: (e) {},
                                  activeColor: ColorsApp.checkColor,
                                  controlAffinity: ListTileControlAffinity.leading,
                                  title: CustomText(
                                    text: 'Weather station under construction',
                                    size: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                CheckboxListTile(
                                  value: false,
                                  onChanged: (e) {},
                                  controlAffinity: ListTileControlAffinity.leading,
                                  title: CustomText(
                                    text: 'Weather station under construction',
                                    size: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                const CustomField(obscureText: false, text: 'Station classification'),
                                verticalSpaceSmall,
                                const CustomField(obscureText: false, text: 'Station class'),
                                verticalSpaceSmall,
                                const CustomField(obscureText: false, text: 'Proposed station location'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceMassive,
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
