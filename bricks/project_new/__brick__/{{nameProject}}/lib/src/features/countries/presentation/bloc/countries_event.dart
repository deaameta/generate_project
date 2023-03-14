part of 'countries_bloc.dart';

@immutable
abstract class CountriesEvent {}

class CountriesDataEvent extends CountriesEvent {
  CountriesDataEvent();
}
