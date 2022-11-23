import 'package:flutter/material.dart';
import 'package:properties_app/navbar/navbar_items_model.dart';
import 'package:properties_app/widgets/text_fields.dart';

import 'item_selector.dart';

class SelectionBox extends StatelessWidget {
  final Image image;
  final String title;
  const SelectionBox({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      focusColor: Color(0xff00D2AA),
      highlightColor: Color(0xff00D2AA),
      hoverColor: Color(0xff00D2AA),
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            image,
            const SizedBox(
              height: 40,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// custom appBar for explore section

class CustomAppBar extends StatefulWidget {
  final IconButton iconButton;

  const CustomAppBar({
    super.key,
    required this.iconButton,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final TextEditingController _locationController = TextEditingController();
  int selectedButton = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      decoration: const BoxDecoration(
        color: Color(0xff3C286E),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              widget.iconButton,
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              const Text(
                'Add Information',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppbarButtons(text: 'BUY', selected: false),
              const SizedBox(
                width: 10,
              ),
              AppbarButtons(text: 'RENT', selected: false),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: LocationField(
                      textEditingController: _locationController,
                      hintText: 'Search Your Location',
                      textInputType: TextInputType.text),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              AppbarButtons(text: 'Map', selected: false),
            ],
          ),
        ],
      ),
    );
  }
}

// custom buttons that are used in appBar
class AppbarButtons extends StatefulWidget {
  final String text;
  bool selected;

  AppbarButtons({
    super.key,
    required this.text,
    required this.selected,
  });

  @override
  State<AppbarButtons> createState() => _AppbarButtonsState();
}

class _AppbarButtonsState extends State<AppbarButtons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.selected = !widget.selected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color:
              widget.selected ? Color.fromRGBO(0, 210, 170, 0.3) : Colors.white,
          border: widget.selected
              ? Border.all(color: const Color(0xff00D2AA))
              : null,
          borderRadius: BorderRadius.circular(15),
        ),
        height: 50,
        width: 100,
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: widget.selected
                  ? Colors.white
                  : Color.fromRGBO(41, 42, 46, 0.6),
            ),
          ),
        ),
      ),
    );
  }
}

// custom button that is used in price range section of explore information portion..

class CurrencyButton extends StatefulWidget {
  const CurrencyButton({super.key});

  @override
  State<CurrencyButton> createState() => _CurrencyButtonState();
}

class _CurrencyButtonState extends State<CurrencyButton> {
  // Initial Selected Value
  String dropdownvalue = 'Thailand (THB)';

  // List of items in our dropdown menu
  var items = [
    'Thailand (THB)',
    'United States (USD)',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Initial Value
      value: dropdownvalue,

      icon: const Icon(Icons.keyboard_arrow_down),
      autofocus: false,
      borderRadius: BorderRadius.circular(10),
      underline: DropdownButtonHideUnderline(child: Container()),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Text(items),
          ),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
    );
  }
}
// custom button that is used in property type section...

class PropertyType extends StatefulWidget {
  const PropertyType({super.key});

  @override
  State<PropertyType> createState() => _PropertyTypeState();
}

class _PropertyTypeState extends State<PropertyType> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(0, 0, 0, 0.2)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(children: [
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return PropertyTypeButton(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                title: propertyButtons[index].title,
                isSelected: currentIndex == index,
              );
            },
            itemCount: propertyButtons.length,
          ),
        ),
      ]),
    );
  }
}

// property type button style

class PropertyTypeButton extends StatefulWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  const PropertyTypeButton({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<PropertyTypeButton> createState() => _PropertyTypeButtonState();
}

class _PropertyTypeButtonState extends State<PropertyTypeButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          color: widget.isSelected ? const Color(0xff00D2AA) : null,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              color: widget.isSelected
                  ? Colors.white
                  : const Color.fromRGBO(20, 14, 37, 0.6),
            ),
          ),
        ),
      ),
    );
  }
}

// property type sub buttons \\
// ........................\\

class SubPropertyTypeButtons extends StatefulWidget {
  const SubPropertyTypeButtons({super.key});

  @override
  State<SubPropertyTypeButtons> createState() => _SubPropertyTypeButtonsState();
}

class _SubPropertyTypeButtonsState extends State<SubPropertyTypeButtons> {
  late PropertyTypeSubButtonData _selectedItem;

  void _onItemSelected(PropertyTypeSubButtonData item) {
    setState(() {
      _selectedItem = item;
    });
  }

  @override
  void initState() {
    _selectedItem = subPropertyButtons[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ItemSelector(
      items: subPropertyButtons,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      selectorHeight: 20,
      onPressedColor: const Color.fromRGBO(217, 217, 217, 0.8),
      unPressedColor: const Color.fromRGBO(217, 217, 217, 0.4),
      bottomLeftBorderRadius: 10,
      bottomRightBorderRadius: 10,
      topLeftBorderRadius: 10,
      topRightBorderRadius: 10,
      horizontalPadding: 5,
      verticalPadding: 5,
      selectedBorderColor: Colors.transparent,
      unSelectedBorderColor: Colors.transparent,
      onItemSelected: _onItemSelected,
      itemBuilder: (item) => Text(
        item.title,
        style: TextStyle(
          color: _selectedItem == item
              ? const Color.fromRGBO(20, 14, 37, 0.8)
              : const Color.fromRGBO(20, 14, 37, 0.5),
        ),
      ),
    );
  }
}

// dropdown button used in area range section..
//  ..................................... \\

class AreaRangeDropDownButton extends StatefulWidget {
  const AreaRangeDropDownButton({super.key});

  @override
  State<AreaRangeDropDownButton> createState() =>
      _AreaRangeDropDownButtonState();
}

class _AreaRangeDropDownButtonState extends State<AreaRangeDropDownButton> {
  // Initial Selected Value
  String dropdownvalue = 'Square Meters (Sq.M)';

  // List of items in our dropdown menu
  var items = [
    'Square Meters (Sq.M)',
    'Square Wah (Sq.W)',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Initial Value
      value: dropdownvalue,

      icon: const Icon(Icons.keyboard_arrow_down),
      autofocus: false,
      borderRadius: BorderRadius.circular(10),
      underline: DropdownButtonHideUnderline(child: Container()),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Text(items),
          ),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
    );
  }
}

// Bed and bath numbers section...\\
// ...............................\\

class BedType extends StatefulWidget {
  const BedType({super.key});

  @override
  State<BedType> createState() => _BedTypeState();
}

class _BedTypeState extends State<BedType> {
  late BedTypeButtonData _selectedItem;

  void _onItemSelected(BedTypeButtonData item) {
    setState(() {
      _selectedItem = item;
    });
  }

  @override
  void initState() {
    _selectedItem = appartmentBeds[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ItemSelector(
      items: appartmentBeds,
      mainAxisAlignment: MainAxisAlignment.start,
      selectorHeight: 15,
      onPressedColor: const Color(0xff00D2AA),
      unPressedColor: Colors.transparent,
      onItemSelected: _onItemSelected,
      bottomLeftBorderRadius: 0,
      bottomRightBorderRadius: 0,
      topLeftBorderRadius: 5,
      topRightBorderRadius: 5,
      horizontalPadding: 15,
      verticalPadding: 5,
      selectedBorderColor: Colors.transparent,
      unSelectedBorderColor: const Color.fromRGBO(41, 42, 46, 0.4),
      itemBuilder: (item) => Text(
        item.title,
        style: TextStyle(
          color: _selectedItem == item
              ? const Color.fromRGBO(20, 14, 37, 0.6)
              : const Color.fromRGBO(20, 14, 37, 0.6),
        ),
      ),
    );
  }
}

class BathType extends StatefulWidget {
  const BathType({super.key});

  @override
  State<BathType> createState() => _BathTypeState();
}

class _BathTypeState extends State<BathType> {
  late BathTypeButtonData _selectedItem;

  void _onItemSelected(BathTypeButtonData item) {
    setState(() {
      _selectedItem = item;
    });
  }

  @override
  void initState() {
    _selectedItem = totalBaths[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ItemSelector(
      items: totalBaths,
      mainAxisAlignment: MainAxisAlignment.start,
      selectorHeight: 15,
      onPressedColor: const Color(0xff00D2AA),
      unPressedColor: Colors.transparent,
      onItemSelected: _onItemSelected,
      bottomLeftBorderRadius: 0,
      bottomRightBorderRadius: 0,
      topLeftBorderRadius: 5,
      topRightBorderRadius: 5,
      horizontalPadding: 15,
      verticalPadding: 5,
      selectedBorderColor: Colors.transparent,
      unSelectedBorderColor: const Color.fromRGBO(217, 217, 217, 0.4),
      itemBuilder: (item) => Text(
        item.title,
        style: TextStyle(
          color: _selectedItem == item
              ? const Color.fromRGBO(20, 14, 37, 0.6)
              : const Color.fromRGBO(20, 14, 37, 0.6),
        ),
      ),
    );
  }
}

class AppartmentType extends StatefulWidget {
  const AppartmentType({super.key});

  @override
  State<AppartmentType> createState() => _AppartmentTypeState();
}

class _AppartmentTypeState extends State<AppartmentType> {
  late AppartmentTypeButtonData _selectedItem;

  void _onItemSelected(AppartmentTypeButtonData item) {
    setState(() {
      _selectedItem = item;
    });
  }

  @override
  void initState() {
    _selectedItem = appartmentType[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ItemSelector(
        items: appartmentType,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        selectorHeight: 15,
        onPressedColor: const Color(0xff00D2AA),
        unPressedColor: const Color.fromRGBO(217, 217, 217, 0.4),
        onItemSelected: _onItemSelected,
        bottomLeftBorderRadius: 5,
        bottomRightBorderRadius: 5,
        topLeftBorderRadius: 5,
        topRightBorderRadius: 5,
        horizontalPadding: 15,
        verticalPadding: 5,
        selectedBorderColor: Colors.transparent,
        unSelectedBorderColor: Colors.transparent,
        itemBuilder: (item) => Text(
          item.title,
          style: TextStyle(
            color: _selectedItem == item
                ? const Color.fromRGBO(20, 14, 37, 0.6)
                : const Color.fromRGBO(20, 14, 37, 0.6),
          ),
        ),
      ),
    );
  }
}
