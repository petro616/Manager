import 'package:equatable/equatable.dart';

class OnboardingEntities extends Equatable {
  final String image;
  final String title;
  const OnboardingEntities({required this.image, required this.title});
  @override
  List<Object?> get props => [image, title];
}
