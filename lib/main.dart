import 'package:avom/UI/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Avon());
}

class Avon extends StatelessWidget {
  const Avon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xffD9D9D9)),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
