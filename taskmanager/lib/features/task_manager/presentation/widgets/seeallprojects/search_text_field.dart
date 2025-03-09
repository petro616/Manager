import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  final Function(String) onChanged;
  final TextEditingController isSearchingController;
  const CustomSearchTextField(
      {super.key,
      required this.onChanged,
      required this.isSearchingController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: Colors.grey,
        controller: isSearchingController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Find Project ...",
          hintStyle:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600]),
        ),
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600]),
        onChanged: onChanged);
  }
}
