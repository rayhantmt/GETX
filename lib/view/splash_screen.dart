import 'package:flutter/material.dart';
import 'package:getx_mvvm/data/exceptions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator(),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         throw InternetException('Check your internet connection');
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}