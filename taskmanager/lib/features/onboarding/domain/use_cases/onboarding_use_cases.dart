import 'package:Manager/core/apiresult.dart';
import 'package:Manager/features/onboarding/domain/domain_repositories/onboarding_repositories.dart';
import 'package:Manager/features/onboarding/domain/entites/onboarding_entities.dart';

class OnboardingUseCases {
  final OnboardingDomainRepositoriesImp domainRepositories;
  OnboardingUseCases({required this.domainRepositories});
  Apiresult<List<OnboardingEntities>> onBoardingList() {
    return domainRepositories.onBoardingList();
  }
}
