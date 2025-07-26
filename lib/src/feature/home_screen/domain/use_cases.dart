import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iroid_application/src/feature/home_screen/data/model/property_model.dart';
import 'package:iroid_application/src/feature/home_screen/data/repository/home_repository.dart';

import 'package:iroid_application/src/feature/home_screen/domain/repository/i_home_repository.dart';

final homeUseCaseProvider = Provider.autoDispose<HomeUseCases>(
  (ref) => HomeUseCases(homeRemoteDataSource: ref.read(homeRepositoryProvider)),
);

class HomeUseCases {
  HomeUseCases({required this.homeRemoteDataSource});
  final IHomeRepository homeRemoteDataSource;

  Future<RealEstateResponse?> fetchProperties() async {
    return await homeRemoteDataSource.fetchProperties();
  }
}
