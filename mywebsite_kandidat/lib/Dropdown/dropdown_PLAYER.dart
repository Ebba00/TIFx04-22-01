import 'package:flutter/material.dart';

class DropDownButtonUsed extends StatelessWidget {
  final List<String> items;
  final String selectedItem;
  final Function onChange;

  const DropDownButtonUsed(
      {Key? key,
        required this.items,
        required this.selectedItem,
        required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4,),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 2,),
      ),
      width: 500,
      height: 46,
      child:
        Align(
          alignment: Alignment.center,
          child:
            DropdownButtonHideUnderline(
              child:
                DropdownButton(
                  value: selectedItem,
                  icon: const Icon(Icons.arrow_drop_down, color: Colors.black,),
                  isExpanded: true,
                  itemHeight: 50,
                  items: items.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:
                          Text(
                            item,
                            style: const TextStyle(
                                fontWeight: FontWeight.w800, height: 1.15, fontSize: 15),
                          ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    onChange(newValue);
                  },
                ),
            ),
        ),
    );
  }
}
