import 'package:dio/dio.dart';
import 'package:doc_doc/core/networking/api_constants.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:doc_doc/features/home/data/models/logout_response_model.dart';
import 'package:doc_doc/features/login/data/models/login_request_body.dart';
import 'package:doc_doc/features/login/data/models/login_response.dart';
import 'package:doc_doc/features/signup/data/models/signup_request_body.dart';
import 'package:doc_doc/features/signup/data/models/signup_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl, ParseErrorLogger? errorLogger}) =
      _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(@Body() SignupRequestBody signupRequestBody);

  @GET(ApiConstants.specializations)
  Future<SpecializationsResponse> getAllSpecializations();

  @POST(ApiConstants.logout)
  Future<LogoutResponse> logout();
}
