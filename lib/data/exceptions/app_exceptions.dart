
class AppExceptions implements Exception {
  final _message;
  final _prefix;
  AppExceptions([this._message,this._prefix]);
  
  @override
  String toString() {
    // TODO: implement toString
    return '$_message$_prefix';
  }
}

class NoInternetException extends AppExceptions{
  NoInternetException([String? message]):super(message,'No Internet Connection');
}

class UnauthorizedException extends AppExceptions{
  UnauthorizedException([String? message]):super(message,'you dont have access to this ');
}

class RequestTimeOutException extends AppExceptions{
  RequestTimeOutException([String? message]):super(message,'Request Time out ');
}

class FetchDataException extends AppExceptions{
  FetchDataException([String? message]):super(message,'');
}