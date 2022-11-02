import 'dart:html';

import 'package:flutter/material.dart';
import 'package:properties_app/utils/colors.dart';
import 'package:properties_app/widgets/text_fields.dart';
import 'package:properties_app/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE7E4E4),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 50,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //main logo of screen
                    Image.asset(
                      'assets/Union.png',
                      height: 80,
                    ),
                    //text lines after logo
                    Row(
                      children: [
                        const Text(
                          'Welcome to',
                          style: TextStyle(
                            color: Color(0xff140E25),
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/Group 85.png',
                          width: 150,
                          height: 40,
                        ),
                      ],
                    ),
                    const Text(
                      'To get stared what is your email',
                      style: TextStyle(
                        color: Color.fromRGBO(20, 14, 37, 0.6),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //login fields for email and password
                    TextFieldInput(
                        textEditingController: _emailController,
                        hintText: 'Enter your registered Email',
                        isPass: false,
                        textInputType: TextInputType.emailAddress),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldInput(
                        textEditingController: _passwordController,
                        hintText: 'Enter your Password',
                        isPass: true,
                        textInputType: TextInputType.text),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forget Password',
                        style: TextStyle(
                          color: Color.fromRGBO(20, 14, 37, 0.6),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //Login button
                    InkWell(
                      onTap: () {},
                      child: LoginButton(
                          textColor: Colors.white,
                          backgroundColor: Color(0xff00D2AA),
                          borderColor: Color(0xff00D2AA),
                          iconColor: null,
                          text: 'Login',
                          icon: null,
                          buttonWidth: double.infinity,
                          buttonHeight: 40),
                    ),
                    //text line for terms of services
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'By tapping continue, I accept',
                          style: TextStyle(
                            color: Color.fromRGBO(20, 14, 37, 0.6),
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          'assets/Group 85.png',
                          width: 70,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'terms of use',
                            style: TextStyle(
                              color: Color(0xff140E25),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //dividers
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 20.0),
                              child: const Divider(
                                color: Color(0xff99A5B4),
                              )),
                        ),
                        const Text(
                          "or",
                          style: TextStyle(
                            color: Color.fromRGBO(20, 14, 37, 0.6),
                            fontSize: 20,
                          ),
                        ),
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 20.0, right: 10.0),
                              child: const Divider(
                                color: Color(0xff99A5B4),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //Continue with facebook button
                    InkWell(
                      onTap: () {},
                      child: LoginButton(
                        textColor: Colors.white,
                        backgroundColor: const Color(0xff4267B2),
                        borderColor: const Color(0xff4267B2),
                        icon: Icons.facebook,
                        text: 'Continue with Facebook',
                        buttonWidth: double.infinity,
                        buttonHeight: 50,
                        iconColor: Colors.white,
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // Continue with Line button
                    InkWell(
                      onTap: () {},
                      child: LoginButton(
                        textColor: Colors.white,
                        backgroundColor: const Color(0xff39AE41),
                        borderColor: const Color(0xff39AE41),
                        icon: Icons.facebook,
                        text: 'Continue with LINE',
                        buttonWidth: double.infinity,
                        buttonHeight: 50,
                        iconColor: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Continue with Line Google
                    InkWell(
                      onTap: () {},
                      child: LoginButton(
                        textColor: const Color.fromRGBO(20, 14, 37, 0.6),
                        backgroundColor: null,
                        borderColor: const Color(0xffC4B6B6),
                        icon: Icons.facebook,
                        text: 'Continue with Google',
                        buttonWidth: double.infinity,
                        buttonHeight: 50,
                        iconColor: null,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text(
                        "Don't' have an Account?",
                        style: TextStyle(
                            color: Color.fromRGBO(20, 14, 37, 0.6),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                                color: Color(0xff3C286E),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ))
                    ]),
                  ]),
            ),
          ),
        ));
  }
}
