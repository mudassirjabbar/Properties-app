import 'package:flutter/material.dart';
import 'package:properties_app/widgets/background_image.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: screenHeight * .5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  width: 300,
                  child: const Text(
                    'Find Your Residence Home',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 400,
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Malesuada lectus tincidunt pulvinar at  ',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xff00D2AA),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
