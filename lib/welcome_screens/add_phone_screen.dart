import 'package:flutter/material.dart';
import 'package:properties_app/widgets/text_fields.dart';
import 'package:properties_app/widgets/widgets.dart';

class AddPhoneNumber extends StatefulWidget {
  const AddPhoneNumber({super.key});

  @override
  State<AddPhoneNumber> createState() => _AddPhoneNumberState();
}

class _AddPhoneNumberState extends State<AddPhoneNumber> {
  final TextEditingController _selectRegion = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(60, 40, 110, 0.45),
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_sharp,
          ),
        ),
        centerTitle: true,
        title: const Text('Add Phone Number ?'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFieldInput(
              textEditingController: _selectRegion,
              hintText: 'Select Region',
              isPass: false,
              textInputType: TextInputType.number,
            ),
            const SizedBox(
              height: 30,
            ),
            TextFieldInput(
              textEditingController: _phoneNumber,
              hintText: 'Enter your phone number',
              isPass: false,
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 70,
            ),
            LoginButton(
                textColor: Colors.white,
                backgroundColor: Color(0xff00D2AA),
                borderColor: Color(0xff00D2AA),
                iconColor: null,
                text: 'Verify',
                icon: null,
                buttonWidth: 200,
                buttonHeight: 50)
          ],
        ),
      ),
    );
  }
}
