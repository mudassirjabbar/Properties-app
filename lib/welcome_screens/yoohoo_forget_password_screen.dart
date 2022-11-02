import 'package:flutter/material.dart';
import 'package:properties_app/widgets/text_fields.dart';
import 'package:properties_app/widgets/widgets.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9E94B3),
      body: Container(
        margin: const EdgeInsets.only(top: 70),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_sharp,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.38,
                ),
                Container(
                  height: 4,
                  width: 118,
                  margin: const EdgeInsets.only(top: 5),
                  decoration: const BoxDecoration(color: Color(0xff140E2533)),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Forget Password ?',
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
                'Enter your Email for verivication proceccess we will send you a 4 digit code as sms',
                style: TextStyle(
                  color: Color(0xff3C286E73),
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: TextFieldInput(
                  textEditingController: _passwordController,
                  hintText: 'Enter your email here',
                  isPass: false,
                  textInputType: TextInputType.emailAddress),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: LoginButton(
                buttonWidth: 150,
                buttonHeight: 50,
                backgroundColor: Color(0xff00D2AA),
                text: 'Continue',
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
