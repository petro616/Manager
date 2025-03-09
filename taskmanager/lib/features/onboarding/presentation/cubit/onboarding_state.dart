import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:Manager/features/onboarding/domain/entites/onboarding_entities.dart';
part 'onboarding_state.freezed.dart';

@freezed
sealed class OnboardingState<T> with _$OnboardingState<T> {
  factory OnboardingState.idle() = Idle<T>;
  factory OnboardingState.loaded(List<OnboardingEntities> data) = Loaded<T>;
  factory OnboardingState.compeleted() = Completed<T>;
}
