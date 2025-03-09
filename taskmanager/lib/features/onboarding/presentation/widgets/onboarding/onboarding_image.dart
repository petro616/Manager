import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingImage extends StatelessWidget {
  final String imageName;
  const OnboardingImage({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageName,
      height: 320.h,
    );
  }
}
