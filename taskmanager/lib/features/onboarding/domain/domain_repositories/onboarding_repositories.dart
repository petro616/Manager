import 'package:Manager/core/apiresult.dart';
import 'package:Manager/features/onboarding/data/repositories/data_repositories.dart';
import 'package:Manager/features/onboarding/domain/entites/onboarding_entities.dart';

abstract class OnboardingDomainRepositories {
  Apiresult<List<OnboardingEntities>> onBoardingList();
}

class OnboardingDomainRepositoriesImp extends OnboardingDomainRepositories {
  final DataRepositories dataRepositories;

  OnboardingDomainRepositoriesImp({required this.dataRepositories});
  @override
  Apiresult<List<OnboardingEntities>> onBoardingList() {
    return dataRepositories.onBoardingList();
  }
}
