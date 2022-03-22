import 'package:flutter/material.dart';

class DropDownButtonGame extends StatelessWidget {
  final List<String> items;
  final String selectedItem;
  final Function onChange;

  const DropDownButtonGame(
      {Key? key,
        required this.items,
        required this.selectedItem,
        required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: selectedItem,
      icon: const Icon(Icons.keyboard_arrow_down),
      items: items.map((String item) {
        return DropdownMenuItem(
          value: item,
          child: Text(
            item,
            style: const TextStyle(
                fontWeight: FontWeight.w800, height: 1.15, fontSize: 15),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        onChange(newValue);
      },
    );
  }
}
