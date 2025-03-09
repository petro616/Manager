import 'package:Manager/core/apiresult.dart';
import 'package:Manager/features/onboarding/data/data_source/local_data_source.dart';
import 'package:Manager/features/onboarding/data/model/onboarding_model.dart';
import 'package:Manager/features/onboarding/domain/domain_repositories/onboarding_repositories.dart';
import 'package:Manager/features/onboarding/domain/entites/onboarding_entities.dart';

class DataRepositories implements OnboardingDomainRepositories {
  final LocalDataSource localDataSource;

  DataRepositories({required this.localDataSource});

  @override
  Apiresult<List<OnboardingEntities>> onBoardingList() {
    List<OnboardingModel> onBoaringList = localDataSource.getOnBoardingModel();
    return Apiresult.success(onBoaringList);
  }
}
