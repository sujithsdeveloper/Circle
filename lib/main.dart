import 'package:circle_social_media/controller/bottomNavigationController.dart';
import 'package:circle_social_media/utils/theme/theme.dart';
import 'package:circle_social_media/view/HomeScreen/mainpage.dart';
import 'package:circle_social_media/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Bottomnavigationcontroller(),
        )
      ],
      child: MaterialApp(
        themeMode: ThemeMode.system,
        theme: ThemeClass.lightTheme,
        darkTheme: ThemeClass.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const Mainpage(),
      ),
    );
  }
}
