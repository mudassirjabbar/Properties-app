import 'dart:html';

import 'package:flutter/material.dart';
import 'package:properties_app/widgets/widgets.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _fieldOne.dispose();
    _fieldTwo.dispose();
    _fieldThree.dispose();
    _fieldFour.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9E94B3),
      body: Container(
        margin: const EdgeInsets.only(top: 70),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 250,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_sharp,
                      ),
                    ),
                    Container(
                      height: 4,
                      width: 120,
                      margin: const EdgeInsets.only(top: 5),
                      decoration:
                          const BoxDecoration(color: Color(0xff140E2533)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Verification',
              style: TextStyle(
                color: Color(0xff3A3C40),
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              width: 400,
              child: const Text(
                'Enter the 4 digit verification code you received',
                style: TextStyle(
                  color: Color.fromRGBO(41, 42, 46, 0.6),
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OtpPin(textEditingController: _fieldOne),
                  OtpPin(textEditingController: _fieldTwo),
                  OtpPin(textEditingController: _fieldThree),
                  OtpPin(textEditingController: _fieldFour),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn't' received an OTP!",
                  style: TextStyle(
                    color: Color.fromRGBO(20, 14, 37, 0.6),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'RESEND',
                    style: TextStyle(
                        color: Color(0xff140E25), fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {},
              child: LoginButton(
                buttonWidth: 250,
                buttonHeight: 50,
                backgroundColor: Color(0xff00D2AA),
                text: 'Verify',
                textColor: Colors.white,
                icon: null,
                borderColor: Color(0xff00D2AA),
                iconColor: null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
