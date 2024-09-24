import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:circle_social_media/utils/assets_constants.dart';
import 'package:circle_social_media/view/LoginScreen/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Color textColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Lottie.asset(
              AnimationConstants.circleOutlined,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  'Circle',
                  textStyle: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                      fontFamily: 'Gfont'),
                  speed: const Duration(milliseconds: 200),
                ),
              ],
              isRepeatingAnimation: false,
              repeatForever: false,
            ),
          ],
        ),
      ),
    );
  }
}
