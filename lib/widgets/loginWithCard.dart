import 'package:flutter/material.dart';

class LoginWithCard extends StatelessWidget {
  const LoginWithCard({
    super.key,
    required this.color, required this.text, required this.image,
  });

  final Color color;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: color,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 60,
          vertical: 10,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(image: AssetImage(image)),
            const SizedBox(width: 20),
            Text(
              text,
              style: TextStyle(color: color),
            )
          ],
        ),
      ),
    );
  }
}
