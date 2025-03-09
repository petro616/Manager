import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextformFieldProject extends StatelessWidget {
  final TextEditingController controller;
  const CustomTextformFieldProject({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorHeight: 16.h,
      cursorColor: Colors.grey,
      controller: controller,
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.edit),
          label: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                "Project Name",
                style: TextStyle(
                    color: Colors.grey[800], fontWeight: FontWeight.bold),
              )),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          contentPadding: EdgeInsets.all(11.w),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.r),
              borderSide: BorderSide(color: Colors.grey, width: 2.w)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(color: Colors.grey, width: 2.w))),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a project name';
        }
        return null;
      },
    );
  }
}
