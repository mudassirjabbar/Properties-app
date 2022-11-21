import 'package:flutter/material.dart';

// custom itemSelector used in subButton in property type

class ItemSelector<T> extends StatefulWidget {
  final List<T> items;
  final MainAxisAlignment mainAxisAlignment;
  final double selectorHeight;
  final int initialItemIndex;
  final Color selectedItemBackgroundColor;
  final Function(T item) onItemSelected;
  final Widget Function(T item) itemBuilder;

  const ItemSelector(
      {super.key,
      required this.items,
      required this.mainAxisAlignment,
      required this.selectorHeight,
      this.initialItemIndex = 0,
      this.selectedItemBackgroundColor =
          const Color.fromRGBO(217, 217, 217, 0.8),
      required this.onItemSelected,
      required this.itemBuilder});

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
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: _selectedItem == widget.items[index]
                    ? widget.selectedItemBackgroundColor
                    : const Color.fromRGBO(217, 217, 217, 0.4),
                borderRadius: BorderRadius.circular(10),
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
