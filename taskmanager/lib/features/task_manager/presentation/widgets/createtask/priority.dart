import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriorityField extends StatefulWidget {
  final String? priority;
  final void Function(String?)? onChanged;
  const PriorityField(
      {super.key, required this.priority, required this.onChanged});

  @override
  State<PriorityField> createState() => _PriorityFieldState();
}

class _PriorityFieldState extends State<PriorityField> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        value: widget.priority,
        decoration: InputDecoration(
          label: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                "Priority",
                style: TextStyle(
                    color: Colors.grey[800], fontWeight: FontWeight.bold),
              )),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(color: Colors.grey, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(color: Colors.grey, width: 2)),
        ),
        items: ['        Low', '        Medium', '        High']
            .map((priority) => DropdownMenuItem(
                  value: priority,
                  child: Text(priority),
                ))
            .toList(),
        onChanged: widget.onChanged);
  }
}
