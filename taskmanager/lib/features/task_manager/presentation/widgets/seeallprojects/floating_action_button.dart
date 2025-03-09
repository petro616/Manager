import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final void Function() onPressed;
  const CustomFloatingActionButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 1.0,
      backgroundColor: const Color.fromARGB(255, 154, 181, 184),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r)),
      onPressed: onPressed,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
