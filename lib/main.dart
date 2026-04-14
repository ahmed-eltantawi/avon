import 'package:avom/UI/views/splash_view.dart';
import 'package:avom/core/utils/consts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Avon());
}

class Avon extends StatelessWidget {
  const Avon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: kSecondaryColor),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
