import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:Manager/features/onboarding/domain/entites/onboarding_entities.dart';

class OnboardingIndicator extends StatelessWidget {
  final PageController controller;
  final List<OnboardingEntities> data;
  const OnboardingIndicator(
      {super.key, required this.controller, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 45.h),
        child: SmoothPageIndicator(
          controller: controller,
          count: data.length,
          effect: SlideEffect(
              spacing: 15.0.w,
              radius: 5.0.r,
              dotWidth: 60.0.w,
              dotHeight: 5.0.h,
              paintStyle: PaintingStyle.stroke,
              strokeWidth: 1.5.w,
              dotColor: Colors.grey,
              activeDotColor: Colors.black),
        ));
  }
}
