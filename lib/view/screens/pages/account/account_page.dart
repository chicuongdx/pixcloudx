// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:io';

import 'package:animated_background/animated_background.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixcloudx/view/materials/app_colors.dart';
import 'package:pixcloudx/view/screens/pages/account/register_form.dart';
import 'package:pixcloudx/view/widgets/cta_button.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: ParticleOptions(
            spawnMaxRadius: 50,
            spawnMinRadius: 10.0,
            particleCount: 50,
            spawnMaxSpeed: 50.0,
            spawnMinSpeed: 10.0,
            minOpacity: 0.3,
            spawnOpacity: 0.4,
            baseColor: Colors.blue,
          ),
        ),
        vsync: this,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(
              child: Text(
                'PixCloudx',
                style: TextStyle(
                  color: AppColors.appNameColor,
                  fontFamily: "SquarePeg",
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: CTAButton(
                onTap: () {},
                label: 'Login',
                height: 35,
                weight: 300,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: GestureDetector(
                onTap: (() => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => RegisterForm()),
                    )),
                child: Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w300,
                    color: AppColors.appNameColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
