import 'package:iroid_application/src/feature/home_screen/data/model/property_model.dart';

abstract interface class IHomeRemoteDataSource {
  Future<RealEstateResponse?> getProperties();
}
