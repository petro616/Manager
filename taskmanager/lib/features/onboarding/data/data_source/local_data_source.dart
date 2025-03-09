import 'package:Manager/features/onboarding/data/model/onboarding_model.dart';

class LocalDataSource {
  List<OnboardingModel> getOnBoardingModel() {
    return [
      OnboardingModel(
        image: "assets/images/undraw_next-tasks_y3rm.png",
        title: "Boost Your Productivity By\n           Getting Tasks",
      ),
      OnboardingModel(
        image: "assets/images/undraw_percentages_wi9e.png",
        title: "Check Your Tasks To Be\n           Completed",
      ),
      OnboardingModel(
          image: "assets/images/undraw_project-completed_fwjq.png",
          title:
              "Celebrate After Finshing Every\n                 Single Task"),
    ];
  }
}
