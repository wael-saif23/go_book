import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.errorMessage});

  factory ServerFailure.fromException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure(
            errorMessage: 'connection timeout , please try again later');
      case DioExceptionType.sendTimeout:
        return const ServerFailure(
            errorMessage: 'send timeout , please try again later');
      case DioExceptionType.receiveTimeout:
        return const ServerFailure(
            errorMessage: 'receive timeout , please try again later');
      case DioExceptionType.badCertificate:
        return const ServerFailure(
            errorMessage: 'bad certificate , please try again later');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          response: dioException.response!.data,
          statesCode: dioException.response!.statusCode!,
        );
      case DioExceptionType.cancel:
        return const ServerFailure(
            errorMessage: 'request cancelled , please try again later');
      case DioExceptionType.connectionError:
        return const ServerFailure(
            errorMessage: 'connection error , please try again later');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return const ServerFailure(
            errorMessage: 'no internet connection , please try again later',
          );
        }
        return const ServerFailure(
          errorMessage: 'unexpected error , please try again',
        );
      default:
        return const ServerFailure(
          errorMessage: 'something went wrong , please try again later',
        );
    }
  }

  factory ServerFailure.fromResponse({
    required Response response,
    required int statesCode,
  }) {
    if (statesCode == 400 || statesCode == 401 || statesCode == 403) {
      return ServerFailure(
        errorMessage: response.data['error']['message'] ??
            'something went wrong , please try again later',
      );
    } else if (statesCode == 404) {
      return const ServerFailure(
        errorMessage: 'Your request not found , please try again later',
      );
    } else if (statesCode == 500) {
      return const ServerFailure(
        errorMessage: 'internal server error , please try again later',
      );
    } else {
      return const ServerFailure(
        errorMessage: 'something went wrong , please try again later',
      );
    }
  }
}


// class CacheFailure extends Failure {}

// class OfflineFailure extends Failure {}

// class UnknownFailure extends Failure {}

// class InvalidInputFailure extends Failure {}

// class NetworkFailure extends Failure {}

// class NoInternetFailure extends Failure {}

// class UnAuthorizedFailure extends Failure {}

// class ForbiddenFailure extends Failure {}

// class BadRequestFailure extends Failure {}

// class NotFoundFailure extends Failure {}

// class ConflictFailure extends Failure {}

// class InternalServerErrorFailure extends Failure {}

// class ServiceUnavailableFailure extends Failure {}

// class BadGatewayFailure extends Failure {}

// class GatewayTimeoutFailure extends Failure {}

// class TooManyRequestsFailure extends Failure {}

// class UnprocessableEntityFailure extends Failure {}

// class UnknownErrorFailure extends Failure {}

// class UnKnownFailure extends Failure {}

// class NoDataFailure extends Failure {}
