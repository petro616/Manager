import 'package:freezed_annotation/freezed_annotation.dart';
part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel {
  final String error;

  ErrorModel({required this.error});
  factory ErrorModel.fromJson(List json) =>
      _$ErrorModelFromJson(json as Map<String, dynamic>);

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}
