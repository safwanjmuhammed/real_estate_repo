import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iroid_application/src/core/service/dio_api_service/interface/api_service_interface.dart';
import 'package:iroid_application/src/feature/home_screen/data/model/property_model.dart';
import 'package:iroid_application/src/feature/home_screen/data/source/remote_data_source/home_remote_data_source.dart';
import 'package:iroid_application/src/feature/home_screen/data/source/remote_data_source/i_home_remote_data_source.dart';
import 'package:iroid_application/src/feature/home_screen/domain/repository/i_home_repository.dart'
    show IHomeRepository;

final homeRepositoryProvider = Provider.autoDispose<IHomeRepository>(
  (ref) => HomeRepository(dataSource: ref.read(homeRemoteDataSourceProvider)),
);

class HomeRepository implements IHomeRepository {
  HomeRepository({required this.dataSource});
  final IHomeRemoteDataSource dataSource;
  @override
  Future<RealEstateResponse?> fetchProperties() async {
    return await dataSource.getProperties();
  }
}
