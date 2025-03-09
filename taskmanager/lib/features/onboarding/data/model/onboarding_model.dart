import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:Manager/features/onboarding/domain/entites/onboarding_entities.dart';
part 'onboarding_model.g.dart';

@JsonSerializable()
class OnboardingModel extends OnboardingEntities {
  const OnboardingModel({required super.image, required super.title});
  factory OnboardingModel.fromJson(List json) =>
      _$OnboardingModelFromJson(json as Map<String, dynamic>);

  Map<String, dynamic> toJson() => _$OnboardingModelToJson(this);
}
