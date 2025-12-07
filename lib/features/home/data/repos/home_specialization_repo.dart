import 'package:doc_doc/core/networking/api_error_handler.dart';
import 'package:doc_doc/core/networking/api_result.dart';
import 'package:doc_doc/core/networking/api_service.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';

class HomeSpecializationRepo {
  final ApiService _apiService;

  HomeSpecializationRepo(this._apiService);
  Future<ApiResult<SpecializationsResponse>> getAllSpecializations() async {
    try {
      final response = await _apiService.getAllSpecializations();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
