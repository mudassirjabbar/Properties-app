import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40),
        height: screenHeight,
        width: double.infinity,
        color: const Color(0xff3C286E),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Image(
                image: AssetImage('Group-84.png'),
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 100,
              ),
              Image(
                image: AssetImage('Group-364.png'),
                height: 150,
                width: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
