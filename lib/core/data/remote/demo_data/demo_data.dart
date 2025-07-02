import 'package:flutter_project_template_arch/constants/type_def/api_result_type_def.dart';
import 'package:flutter_project_template_arch/core/common/base/base_failure_response.dart';
import 'package:flutter_project_template_arch/core/data/remote/demo_data/dto/demo_data_response.dart';
import 'package:flutter_project_template_arch/core/services/api_fetch/api_fetch.dart';
import 'package:fpdart/fpdart.dart';

class DemoData {
  ApiResult<DemoDataResponse> fetchDemoData() async {
    try {
      final data = await ApiFetch.getApi(url: 'https://reactnative.dev/movies.json');
      DemoDataResponse response = DemoDataResponse.fromJson(data);
      return Right(response);
    } catch (e) {
      return Left(BaseFailureResponse(message: 'Failed to fetch demo data'));
    }
  }
}