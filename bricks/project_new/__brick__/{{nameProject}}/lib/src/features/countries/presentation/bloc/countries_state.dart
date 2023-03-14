part of 'countries_bloc.dart';

@immutable
abstract class CountriesState {}

class CountriesInitial extends CountriesState {}

//Get Countries
class CountriesLoadingState extends CountriesState {}

class CountriesSuccessState extends CountriesState {
  final List<CountryModel> list;

  CountriesSuccessState({required this.list});
}

class CountriesFailureState extends CountriesState {
  final String message;

  CountriesFailureState(this.message);
}
