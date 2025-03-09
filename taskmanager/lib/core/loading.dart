import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitSpinningLines(
        itemCount: 15,
        lineWidth: 15.w,
        color: const Color.fromARGB(255, 154, 181, 184),
        size: 105.0.w,
      ),
    );
  }
}
