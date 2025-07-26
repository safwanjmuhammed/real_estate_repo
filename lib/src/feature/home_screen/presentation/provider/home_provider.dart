import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iroid_application/src/feature/home_screen/data/model/property_model.dart';
import 'package:iroid_application/src/feature/home_screen/domain/use_cases.dart';
import 'package:iroid_application/src/feature/home_screen/presentation/provider/home_state.dart';

// AsyncNotifierProvider for HomeNotifier
final homeNotifierProvider = AsyncNotifierProvider<HomeNotifier, HomeState>(() {
  return HomeNotifier();
});

class HomeNotifier extends AsyncNotifier<HomeState> {
  HomeUseCases get homeUseCases => ref.read(homeUseCaseProvider);

  @override
  Future<HomeState> build() async {
    final data = await homeUseCases.fetchProperties();
    return HomeState(realEstateState: data);
  }
}
