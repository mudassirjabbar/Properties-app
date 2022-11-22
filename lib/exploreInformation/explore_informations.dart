import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:properties_app/widgets/explore_widgets.dart';
import 'package:properties_app/widgets/range_slider_widget.dart';
import 'package:properties_app/widgets/text_fields.dart';

class ExploreInformation extends StatefulWidget {
  const ExploreInformation({super.key});

  @override
  State<ExploreInformation> createState() => _ExploreInformationState();
}

class _ExploreInformationState extends State<ExploreInformation> {
  final TextEditingController _radiusFromController = TextEditingController();
  final TextEditingController _radiusToController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // app bar of explore information screen
            CustomAppBar(
              iconButton: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(255, 255, 255, 0.6),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // range slider section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text(
                      'Radius',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RangeTextField(
                        hintText: '0 km',
                        textEditingController: _radiusFromController,
                        textInputType: TextInputType.number,
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 20,
                          child: Center(child: Text('TO')),
                        ),
                      ),
                      RangeTextField(
                        hintText: 'ANY',
                        textEditingController: _radiusToController,
                        textInputType: TextInputType.number,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(child: const RangeSliderContainer()),
                ],
              ),
            ),

            // Price range section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Price Range',
                          style: TextStyle(fontSize: 20),
                        ),
                        CurrencyButton(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RangeTextField(
                        hintText: '0 km',
                        textEditingController: _radiusFromController,
                        textInputType: TextInputType.number,
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 20,
                          child: Center(child: Text('TO')),
                        ),
                      ),
                      RangeTextField(
                        hintText: 'ANY',
                        textEditingController: _radiusToController,
                        textInputType: TextInputType.number,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(child: const RangeSliderContainer()),
                ],
              ),
            ),

            // Properties type section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'Property type',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const PropertyType(),
                  const SizedBox(
                    height: 10,
                  ),
                  const SubPropertyTypeButtons(),
                ],
              ),
            ),
            // Area range selection section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            children: const [
                              Text(
                                'Area Range (',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'Sq.M',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(20, 14, 37, 0.6),
                                ),
                              ),
                              Text(
                                ')',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        const AreaRangeDropDownButton(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RangeTextField(
                        hintText: '0 km',
                        textEditingController: _radiusFromController,
                        textInputType: TextInputType.number,
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 20,
                          child: Center(child: Text('TO')),
                        ),
                      ),
                      RangeTextField(
                        hintText: 'ANY',
                        textEditingController: _radiusToController,
                        textInputType: TextInputType.number,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(child: const RangeSliderContainer()),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'Beds',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const BedType(),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'Baths',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const BathType(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const AppartmentType(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
