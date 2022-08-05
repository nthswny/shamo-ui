import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  @override
  void initState() {
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign_in'));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 230,
          height: 122,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo_satu.png'),
            ),
          ),
        ),
      ),
    );
  }
}
