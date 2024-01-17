import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ncm/bottom_nav_bar_view.dart';
import 'package:ncm/common/app_colors.dart';
import 'package:ncm/common/ui_helpers.dart';
import 'package:ncm/gen/assets.gen.dart';
import 'package:ncm/widgets/custom_field.dart';
import 'package:ncm/widgets/custom_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.blue.withOpacity(0.1),
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
              body: Center(
                child: Container(
                  width: double.infinity,
                  height: height / 1.4,
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white.withOpacity(0.88),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.09),
                        offset: const Offset(0, 0),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(8.0),
                          child: Assets.images.logo.image(width: width / 1.5),
                        ),
                        const Center(
                          child: CustomText(
                            text: 'Login',
                            size: 30.0,
                            color: ColorsApp.mainColor,
                            letterSpacing: 0.72,
                            fontWeight: FontWeight.w700,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const CustomText(
                          size: 16.0,
                          color: Color(0xFF2A4663),
                          fontWeight: FontWeight.w500,
                          text: 'Username',
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        ),
                        const CustomField(obscureText: false, text: 'Enter your username'),
                        verticalSpaceSmall,
                        const CustomText(
                          size: 16.0,
                          color: Color(0xFF2A4663),
                          fontWeight: FontWeight.w500,
                          text: 'Password',
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        ),
                        const CustomField(obscureText: true, text: 'Enter your password'),
                        verticalSpaceSmall,
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) => const BottomNavBar()),
                              (route) => false,
                            );
                          },
                          child: Container(
                            height: 50.0,
                            margin: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: const Color(0xFF3C7CBF),
                            ),
                            alignment: Alignment.center,
                            child: const CustomText(
                              text: 'Login',
                              size: 16.0,
                              color: Colors.white,
                              letterSpacing: 0.32,
                              fontWeight: FontWeight.w700,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        verticalSpaceTiny,
                        SizedBox(
                          width: width,
                          child: Column(
                            children: [
                              Text(
                                'Forgot Password ?',
                                style: GoogleFonts.roboto(
                                  fontSize: 15.0,
                                  color: const Color(0xFF2A4663),
                                  letterSpacing: 0.3,
                                ),
                              ),
                              verticalSpaceSmall,
                              InkWell(
                                onTap: () {},
                                child: Text.rich(
                                  TextSpan(
                                    style: GoogleFonts.roboto(
                                      fontSize: 15.0,
                                      color: const Color(0xFF2A4663),
                                      letterSpacing: 0.3,
                                    ),
                                    children: [
                                      const TextSpan(text: 'Not a member?'),
                                      TextSpan(
                                        text: ' ',
                                        style: GoogleFonts.roboto(
                                          color: const Color(0xFF3D3D3D),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Register',
                                        style: GoogleFonts.roboto(
                                          color: const Color(0xFF3C7CBF),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
