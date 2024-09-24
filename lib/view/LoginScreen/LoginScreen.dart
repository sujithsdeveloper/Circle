import 'package:circle_social_media/utils/assets_constants.dart';
import 'package:circle_social_media/widgets/Button.dart';
import 'package:circle_social_media/widgets/loginWithCard.dart';
import 'package:circle_social_media/widgets/textfeild.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color currentThemrColor =
        Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black;
    final Color iconColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.grey;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                      color: currentThemrColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Join the Circle, where connections come full circle',
                  style: TextStyle(color: currentThemrColor),
                ),
                const SizedBox(height: 20),
                TextfeildWidget(
                    iconColor: iconColor,
                    label: 'Username',
                    labelIcon: const Icon(Icons.person)),
                const SizedBox(height: 20),
                TextfeildWidget(
                    iconColor: iconColor,
                    label: 'Password',
                    labelIcon: const Icon(Icons.lock)),
                const SizedBox(height: 20),
                const Button(
                  label: 'Login',
                ),
                const SizedBox(height: 30),
                Text(
                  'Login with others',
                  style: TextStyle(
                      color: currentThemrColor, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                LoginWithCard(
                  color: currentThemrColor,
                  text: 'Login with Google',
                  image: ImageConstants.google,
                ),
                const SizedBox(height: 20),
                LoginWithCard(
                  color: currentThemrColor,
                  text: 'Login with Facebook',
                  image: ImageConstants.facebook,
                ),
                const SizedBox(height: 20),
                Text(
                  "Or",
                  style: TextStyle(color: currentThemrColor),
                ),
                const SizedBox(height: 30),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        color: currentThemrColor,
                      ),
                    ))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
