import 'package:youtube_bloc_cleaning_coding/utils/enums.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;
  ApiResponse(this.status, this.data, this.message);
  ApiResponse.loading():status=Status.loading;
  ApiResponse.completed(this.data):status=Status.completed;
  ApiResponse.error(this.message):status=Status.error;

  @override
  String toString() {
    // TODO: implement toString
    return "status: $status \n Message: $message \n Data:$data";
  }
}