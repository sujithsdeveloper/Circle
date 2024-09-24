import 'package:circle_social_media/utils/build_datas.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color currentThemeColor =
        Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black;
    final Color circleAvatarColor =
        Theme.of(context).brightness == Brightness.dark
            ? Colors.black
            : Colors.white;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        child: ListView(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'))),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  right: 130,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: circleAvatarColor,
                        child: const CircleAvatar(
                          radius: 58,
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      Positioned(
                        bottom: 14,
                        right: 14,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.black,
                                size: 15,
                              )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Text(
              'Anna Marry',
              style: TextStyle(
                  color: currentThemeColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                child: Text(
                  lorum,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileContents(
                  currentThemeColor: currentThemeColor,
                  num: '567k',
                  label: 'Followers',
                ),
                const SizedBox(width: 50),
                ProfileContents(
                  currentThemeColor: currentThemeColor,
                  num: '2665',
                  label: 'Following',
                ),
                const SizedBox(width: 50),
                ProfileContents(
                  currentThemeColor: currentThemeColor,
                  num: '8',
                  label: 'Circles',
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileContens2(
                    currentThemeColor: currentThemeColor, text: 'Follow'),
                const SizedBox(width: 30),
                ProfileContens2(
                    currentThemeColor: currentThemeColor, text: 'Message'),
                const SizedBox(width: 30),
                ProfileContens2(
                    currentThemeColor: currentThemeColor, text: 'Invite'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProfileContens2 extends StatelessWidget {
  const ProfileContens2({
    super.key,
    required this.currentThemeColor,
    required this.text,
  });

  final Color currentThemeColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 90,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: currentThemeColor,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    );
  }
}

class ProfileContents extends StatelessWidget {
  const ProfileContents({
    super.key,
    required this.currentThemeColor,
    required this.num,
    required this.label,
  });

  final String num;
  final String label;

  final Color currentThemeColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          num,
          style: TextStyle(
              color: currentThemeColor,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        Text(
          label,
          style: TextStyle(color: currentThemeColor),
        ),
      ],
    );
  }
}
