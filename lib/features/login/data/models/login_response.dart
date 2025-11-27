import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String? message;
  @JsonKey(name: 'data')
  final Data? data;
  final bool? status;
  final int? code;

  LoginResponse({this.message, this.data, this.status, this.code});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class Data {
  final String? token;
  @JsonKey(name: 'username')
  final String? username;

  Data({this.token, this.username});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
