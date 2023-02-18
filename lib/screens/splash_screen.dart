import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:social_network_app/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (_) => const LoginScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 600) {
      return const SplashWidget(
        urlAssetsImage: 'assets/images/img_ig_logo.png',
        sizeLoadingAnim: 50,
        widthImage: 128,
        heightImage: 128,
      );
    }
    return const SplashWidget(
      urlAssetsImage: 'assets/images/img_ig_logo.png',
      sizeLoadingAnim: 50,
      widthImage: 72,
      heightImage: 72,
    );
  }
}

class SplashWidget extends StatelessWidget {
  final String urlAssetsImage;
  final double sizeLoadingAnim;
  final double heightImage;
  final double widthImage;
  const SplashWidget({
    Key? key,
    required this.urlAssetsImage,
    required this.sizeLoadingAnim,
    required this.heightImage,
    required this.widthImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(''),
            Center(
              child: Image.asset(
                urlAssetsImage,
                height: heightImage,
                width: widthImage,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 45),
              alignment: Alignment.bottomCenter,
              child: LoadingAnimationWidget.discreteCircle(
                color: const Color(0xFF833AB4),
                secondRingColor: const Color(0xFFC13584),
                thirdRingColor: const Color(0xFFE1306C),
                size: sizeLoadingAnim,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
