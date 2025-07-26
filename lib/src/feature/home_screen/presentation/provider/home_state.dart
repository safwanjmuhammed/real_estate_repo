import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iroid_application/src/feature/home_screen/data/model/property_model.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({RealEstateResponse? realEstateState}) = _HomeState;
}
