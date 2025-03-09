import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Manager/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:Manager/features/onboarding/presentation/widgets/onboarding_builder.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late PageController controller;
  int pagecount = 0;
  @override
  void initState() {
    context.read<OnboardingCubit>().checkOnboardingStatus();
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OnboardingBuilder(
        controller: controller,
        pagecount: pagecount,
        onPageChanged: (val) {
          setState(() {
            pagecount = val;
          });
        },
        onCompleteOnboarding: () {
          context.read<OnboardingCubit>().completeOnboarding();
        },
      ),
    );
  }
}
