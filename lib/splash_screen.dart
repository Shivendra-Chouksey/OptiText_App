import 'dart:async';

import 'package:flutter/material.dart';
import 'package:opti_text/home_page.dart';
class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> HomePage(),));
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/optitext_full_logo.png"),
                  fit: BoxFit.cover
              ),
            color: Colors.blue.shade900,
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
      ),
    );
  }
}