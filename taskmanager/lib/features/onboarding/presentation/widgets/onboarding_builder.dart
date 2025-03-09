import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/features/onboarding/domain/entites/onboarding_entities.dart';
import 'package:Manager/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:Manager/features/onboarding/presentation/cubit/onboarding_state.dart';
import 'package:Manager/features/onboarding/presentation/widgets/onboarding/onboarding_button.dart';
import 'package:Manager/features/onboarding/presentation/widgets/onboarding/onboarding_image.dart';
import 'package:Manager/features/onboarding/presentation/widgets/onboarding/onboarding_indicator.dart';
import 'package:Manager/features/onboarding/presentation/widgets/onboarding/onboarding_title.dart';
import 'package:Manager/features/task_manager/presentation/screens/home.dart';

class OnboardingBuilder extends StatelessWidget {
  final PageController controller;
  final int pagecount;
  final Function(int) onPageChanged;
  final Function() onCompleteOnboarding;

  const OnboardingBuilder({
    required this.controller,
    required this.pagecount,
    required this.onPageChanged,
    required this.onCompleteOnboarding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit,
        OnboardingState<List<OnboardingEntities>>>(
      builder: (context, state) {
        return state.when(
          idle: () => const SizedBox.shrink(),
          loaded: (List<OnboardingEntities> data) {
            return PageView.builder(
              controller: controller,
              onPageChanged: onPageChanged,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OnboardingIndicator(controller: controller, data: data),
                    OnboardingTitle(title: data[index].title),
                    SizedBox(height: 15.h),
                    OnboardingImage(imageName: data[index].image),
                    SizedBox(height: 40.h),
                    OnboardingButton(
                      onPressed: () {
                        if (pagecount < data.length - 1) {
                          onPageChanged(pagecount + 1);
                          controller.animateToPage(
                            pagecount + 1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.fastEaseInToSlowEaseOut,
                          );
                        } else {
                          onCompleteOnboarding();
                        }
                      },
                    ),
                  ],
                );
              },
            );
          },
          compeleted: () => Home(),
        );
      },
    );
  }
}
