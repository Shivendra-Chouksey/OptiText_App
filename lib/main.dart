import 'package:flutter/material.dart';
import 'package:opti_text/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OptiText App',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(0, 53, 255,1)),
        scaffoldBackgroundColor: Colors.red,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          //backgroundColor: Color.fromRGBO(0, 53, 255,95),
          // backgroundColor: Color.fromRGBO(0, 37, 178,100),
          backgroundColor:  Colors.red,
          elevation: 0.00,
        ),
        iconTheme: const IconThemeData(
          size: 45,
        )
      ),
      home: SplashScreen(),
    );
  }
}
