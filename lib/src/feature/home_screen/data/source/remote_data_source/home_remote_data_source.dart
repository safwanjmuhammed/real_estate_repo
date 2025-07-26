import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iroid_application/src/core/service/dio_api_service/api_service.dart';
import 'package:iroid_application/src/core/service/dio_api_service/interface/api_service_interface.dart';
import 'package:iroid_application/src/core/service/dio_api_service/status_code.dart';
import 'package:iroid_application/src/core/service/endpoints/endpoints.dart';
import 'package:iroid_application/src/feature/home_screen/data/model/property_model.dart';
import 'package:iroid_application/src/feature/home_screen/data/source/remote_data_source/i_home_remote_data_source.dart';

final homeRemoteDataSourceProvider =
    Provider.autoDispose<IHomeRemoteDataSource>(
      (ref) => HomeRemoteDataSource(api: ref.read(dioApiService)),
    );

class HomeRemoteDataSource implements IHomeRemoteDataSource {
  HomeRemoteDataSource({required this.api});
  IApiService api;
  @override
  Future<RealEstateResponse?> getProperties() async {
    try {
      final response = await api.get(Endpoints.products);

      if (response.statusCode == StatusCodes.success) {
        final result = RealEstateResponse.fromJson(response.data);
        return result;
      }
    } on DioException catch (e) {
      if (kDebugMode) print(e.response?.data);
      return null;
    }
    return null;
  }
}
