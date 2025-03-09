import 'dart:io';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:Manager/core/error_model.dart';

part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest(String reason) =
      UnauthorizedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.unprocessableEntity(String reason) =
      UnprocessableEntity;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static NetworkExceptions handleResponse(Response? response) {
    if (response == null) return const NetworkExceptions.unexpectedError();

    List<ErrorModel> listOfErrors =
        List.from(response.data).map((e) => ErrorModel.fromJson(e)).toList();
    String allErrors = listOfErrors
        .map((e) => "${e.error} ")
        .toString()
        .replaceAll("(", "")
        .replaceAll(")", "");
    int statusCode = response.statusCode ?? 0;

    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return NetworkExceptions.unauthorizedRequest(allErrors);
      case 404:
        return NetworkExceptions.notFound(allErrors);
      case 409:
        return const NetworkExceptions.conflict();
      case 408:
        return const NetworkExceptions.requestTimeout();
      case 422:
        return NetworkExceptions.unprocessableEntity(allErrors);
      case 500:
        return const NetworkExceptions.internalServerError();
      case 503:
        return const NetworkExceptions.serviceUnavailable();
      default:
        return NetworkExceptions.defaultError(
          "Received invalid status code: $statusCode",
        );
    }
  }

  static NetworkExceptions getDioException(dynamic error) {
    if (error is DioException) {
      // Handle different DioException cases
      if (error.response != null) {
        // Instead of handling it through DioExceptionType, check if response is available
        return handleResponse(error.response);
      }

      switch (error.type) {
        case DioExceptionType.cancel:
          return const NetworkExceptions.requestCancelled();
        case DioExceptionType.connectionTimeout:
          return const NetworkExceptions.requestTimeout();
        case DioExceptionType.sendTimeout:
          return const NetworkExceptions.sendTimeout();
        case DioExceptionType.receiveTimeout:
          return const NetworkExceptions.sendTimeout();
        // If we don't know the error and there's no response, consider it unexpected
        default:
          return const NetworkExceptions.unexpectedError();
      }
    } else if (error is SocketException) {
      return const NetworkExceptions.noInternetConnection();
    } else {
      return const NetworkExceptions.unexpectedError();
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    return networkExceptions.when(
      notImplemented: () => "Not Implemented",
      requestCancelled: () => "Request Cancelled",
      internalServerError: () => "Internal Server Error",
      notFound: (String reason) => reason,
      serviceUnavailable: () => "Service unavailable",
      methodNotAllowed: () => "Method Not Allowed",
      badRequest: () => "Bad request",
      unauthorizedRequest: (String error) => error,
      unprocessableEntity: (String error) => error,
      unexpectedError: () => "Unexpected error occurred",
      requestTimeout: () => "Connection request timeout",
      noInternetConnection: () => "No internet connection",
      conflict: () => "Error due to a conflict",
      sendTimeout: () => "Send timeout in connection with API server",
      unableToProcess: () => "Unable to process the data",
      defaultError: (String error) => error,
      formatException: () => "Unexpected error occurred",
      notAcceptable: () => "Not acceptable",
    );
  }
}
