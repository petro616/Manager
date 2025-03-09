import 'package:Manager/core/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part "apiresult.freezed.dart";

@freezed
abstract class Apiresult<T> with _$Apiresult<T> {
  factory Apiresult.success(T data) = Success<T>;
  factory Apiresult.failure(NetworkExceptions networkExceptions) = Faliure<T>;
}
