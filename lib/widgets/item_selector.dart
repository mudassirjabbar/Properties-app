import 'package:flutter/material.dart';

// custom itemSelector used in subButton in property type

class ItemSelector<T> extends StatefulWidget {
  final List<T> items;
  final MainAxisAlignment mainAxisAlignment;
  final double selectorHeight;
  final int initialItemIndex;
  final Function(T item) onItemSelected;
  final Widget Function(T item) itemBuilder;
  final Color unPressedColor;
  final Color onPressedColor;
  final double topLeftBorderRadius;
  final double topRightBorderRadius;
  final double bottomLeftBorderRadius;
  final double bottomRightBorderRadius;

  final double horizontalPadding;
  final double verticalPadding;
  final Color selectedBorderColor;
  final Color unSelectedBorderColor;

  const ItemSelector({
    super.key,
    required this.items,
    required this.mainAxisAlignment,
    required this.selectorHeight,
    this.initialItemIndex = 0,
    required this.onItemSelected,
    required this.itemBuilder,
    required this.unPressedColor,
    required this.onPressedColor,
    required this.topLeftBorderRadius,
    required this.topRightBorderRadius,
    required this.bottomLeftBorderRadius,
    required this.bottomRightBorderRadius,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.selectedBorderColor,
    required this.unSelectedBorderColor,
  });

  @override
  State<ItemSelector<T>> createState() => _ItemSelectorState<T>();
}

class _ItemSelectorState<T> extends State<ItemSelector<T>> {
  late T _selectedItem;

  @override
  void initState() {
    _selectedItem = widget.items[widget.initialItemIndex];
    super.initState();
  }

  void _onItemPressed(int index) {
    setState(() {
      _selectedItem = widget.items[index];
    });
    widget.onItemSelected(_selectedItem);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: widget.mainAxisAlignment,
      children: [
        for (int index = 0; index < widget.items.length; index++)
          GestureDetector(
            onTap: () => _onItemPressed(index),
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: widget.horizontalPadding,
                  vertical: widget.verticalPadding),
              decoration: BoxDecoration(
                color: _selectedItem == widget.items[index]
                    ? widget.onPressedColor
                    : widget.unPressedColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(widget.topLeftBorderRadius),
                  topRight: Radius.circular(widget.topRightBorderRadius),
                  bottomLeft: Radius.circular(widget.bottomLeftBorderRadius),
                  bottomRight: Radius.circular(widget.bottomRightBorderRadius),
                ),
                border: Border.all(
                    color: _selectedItem == widget.items[index]
                        ? widget.selectedBorderColor
                        : widget.unSelectedBorderColor),
              ),
              child: Center(
                child: widget.itemBuilder(widget.items[index]),
              ),
            ),
          ),
      ],
    );
  }
}
