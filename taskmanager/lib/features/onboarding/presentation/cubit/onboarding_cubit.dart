import 'package:shared_preferences/shared_preferences.dart';
import 'package:Manager/core/apiresult.dart';
import 'package:Manager/core/network_exceptions.dart';
import 'package:Manager/features/onboarding/domain/entites/onboarding_entities.dart';
import 'package:Manager/features/onboarding/domain/use_cases/onboarding_use_cases.dart';
import 'package:Manager/features/onboarding/presentation/cubit/onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<OnboardingState<List<OnboardingEntities>>> {
  final OnboardingUseCases useCases;
  OnboardingCubit({required this.useCases}) : super(Idle());
  Future<void> checkOnboardingStatus() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final isOnboardingCompleted =
        sharedPreferences.getBool('isOnboardingCompleted');
    if (isOnboardingCompleted == true) {
      emit(Completed());
    } else {
      getOnBoarding();
    }
  }

  getOnBoarding() {
    Apiresult<List<OnboardingEntities>> onBoardingList =
        useCases.onBoardingList();
    onBoardingList.when(
        success: (List<OnboardingEntities> data) {
          emit(Loaded(data));
        },
        failure: (NetworkExceptions error) {});
  }

  Future<void> completeOnboarding() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('isOnboardingCompleted', true);
    emit(Completed());
  }
}
