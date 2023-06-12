import 'package:dio/dio.dart';

abstract class Failures {
  final String errMassage;

  Failures(this.errMassage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMassage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection time out with api server ');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send time out with api server ');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive time out with api server ');
      case DioExceptionType.badResponse:
        return ServerFailure.fromDioResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request cancled with api server ');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SokectExcption')) {
          return ServerFailure('Ops No Internet!');
        }
        return ServerFailure('unexpanded error');
      default:
        return ServerFailure('Ops there was an error');
    }
  }
  factory ServerFailure.fromDioResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Error 404 Not found !');
    } else if (statusCode == 500) {
      return ServerFailure('internal Server Erorr');
    } else {
      return ServerFailure('ops! there was an error');
    }
  }
}
