import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextformFieldTaskDescription extends StatelessWidget {
  final TextEditingController controller;
  const CustomTextformFieldTaskDescription(
      {super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 3,
      cursorHeight: 16.h,
      cursorColor: Colors.grey,
      controller: controller,
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.edit),
          label: Container(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Text(
                "Description",
                style: TextStyle(
                    color: Colors.grey[800], fontWeight: FontWeight.bold),
              )),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.r),
              borderSide: BorderSide(color: Colors.grey, width: 2.w)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(color: Colors.grey, width: 2.w))),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a description name';
        }
        return null;
      },
    );
  }
}
