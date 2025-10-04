// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'user_model.freezed.dart';
// part 'user_model.g.dart';

// @freezed
// class UserModel with _$UserModel{
//   factory UserModel({
//   @Default('') @JsonKey(name:'token') String token,
//   @Default('') @JsonKey(name:'error') String error,
//   })=_UserModel;

//   factory UserModel.fromJson(Map<String,dynamic> json)=>_$UserModelFromJson(json);
  
//   @override
//   // TODO: implement error
//   String get error => throw UnimplementedError();
  
//   @override
//   Map<String, dynamic> toJson() {
//     // TODO: implement toJson
//     throw UnimplementedError();
//   }
  
//   @override
//   // TODO: implement token
//   String get token => throw UnimplementedError();

 
// }


// user_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default('') @JsonKey(name: 'token') String token,
    @Default('') @JsonKey(name: 'error') String error,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
      
        @override
        // TODO: implement error
        String get error => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
      
        @override
        // TODO: implement token
        String get token => throw UnimplementedError();
}

