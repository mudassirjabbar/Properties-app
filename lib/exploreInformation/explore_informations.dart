import 'package:flutter/material.dart';

class ExploreInformation extends StatefulWidget {
  const ExploreInformation({super.key});

  @override
  State<ExploreInformation> createState() => _ExploreInformationState();
}

class _ExploreInformationState extends State<ExploreInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3C286E),
        leading: const Icon(Icons.arrow_back),
        title: const Text('Add Information'),
      ),
    );
  }
}
