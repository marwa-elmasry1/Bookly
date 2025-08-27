import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioExeption(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServices');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServices');
      case DioExceptionType.receiveTimeout:
         return ServerFailure('receive timeout with ApiServices');
      case DioExceptionType.badCertificate:
         return ServerFailure('badCertificate with ApiServices');
      case DioExceptionType.badResponse:
         return ServerFailure.fromResponce(dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
         return ServerFailure('cancel');
      case DioExceptionType.connectionError:
         return ServerFailure('connectionError');
      case DioExceptionType.unknown:
         return ServerFailure(' unknown');
    }
  }

  factory ServerFailure.fromResponce(int statusCode, dynamic response){
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if(statusCode == 404) {
      return ServerFailure('Your Request not Found....Please ttry again.');
    }else if(statusCode == 500) {
      return ServerFailure('Internal server Error....Please ttry again.');
    } else{
      return ServerFailure('OOPS, Please Try Again.');
    }
  }
}
