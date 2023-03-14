import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:{{nameProject}}/src/features/countries/domain/entities/country_model.dart';
import 'package:{{nameProject}}/src/features/countries/domain/usecases/countries_data_usecase.dart';
import 'package:{{nameProject}}/src/core/core.dart';

part 'countries_event.dart';

part 'countries_state.dart';

class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  late CountriesDataUseCase countriesUseCase;

  CountriesBloc() : super(CountriesInitial()) {
    countriesUseCase = sl<CountriesDataUseCase>();
    on<CountriesDataEvent>(_getSettingsDataEvent);
  }

  _getSettingsDataEvent(CountriesDataEvent event, Emitter<CountriesState> emitter) async {
    emitter(CountriesLoadingState());
    final allActiveBalancesResponse = await countriesUseCase.call(CountriesParams());
    allActiveBalancesResponse.fold((l) {
      emitter(CountriesFailureState(l.errorMessage));
    }, (r) async {
      emitter(CountriesSuccessState(list: r));
    });
  }
}
