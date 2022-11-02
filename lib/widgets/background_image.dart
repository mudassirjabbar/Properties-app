import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          Color(0xffD9D9D9),
          Color(0xff3C286E75),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(bounds),
      blendMode: BlendMode.hardLight,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('furniture.jpg'),
            fit: BoxFit.cover,
            colorFilter:
                ColorFilter.mode(Color(0xff3c286e75), BlendMode.darken),
          ),
        ),
      ),
    );
  }
}

class BackgroundPicture extends StatelessWidget {
  const BackgroundPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(0, 0, 0, 0.16),
            Color.fromRGBO(0, 0, 0, 0.08),
          ],
        ),
      ),
      child: Image.asset(
        'assets/Ellipse 24.png',
        height: MediaQuery.of(context).size.height * 0.4,
        alignment: Alignment.topRight,
      ),
    );
  }
}
