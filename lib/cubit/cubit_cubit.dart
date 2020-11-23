import 'package:bloc/bloc.dart';
import 'package:covid_by_country/services/api_service.dart';
import 'models/cubit_state.dart';
export 'models/cubit_state.dart';

class CovidCubit extends Cubit<CubitState> {
  CovidCubit(this._apiService) : super(CubitState((b) => b.isBusy = false));

  Future<CubitState> fetchApiData(String countryName) async {
    try {
      emit(state.rebuild((b) => b
        ..isBusy = true
        ..apiError = null));
      await _apiService.fetchData(countryName);
    } catch (e) {
      emit(state.rebuild((b) => b
        ..isBusy = true
        ..apiError = e.toString()));
    }
    return CubitState();
  }

  final ApiService _apiService;
}
