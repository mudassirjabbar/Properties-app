import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginButton extends StatelessWidget {
  final Color textColor;
  final Color? backgroundColor;
  final Color borderColor;
  final Color? iconColor;
  final String text;
  final IconData? icon;
  double buttonWidth;
  double buttonHeight;
  LoginButton(
      {required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.iconColor,
      required this.text,
      required this.icon,
      required this.buttonWidth,
      required this.buttonHeight,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
          color: borderColor,
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: iconColor,
              ),
            if (icon != null)
              const SizedBox(
                width: 10,
              ),
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class OtpPin extends StatelessWidget {
  final TextEditingController textEditingController;
  const OtpPin({
    super.key,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    final InputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );

    return SizedBox(
      height: 50,
      width: 50,
      child: TextField(
        controller: textEditingController,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder,
          focusedBorder: InputBorder,
          enabledBorder: InputBorder,
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
