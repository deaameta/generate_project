import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{nameProject}}/main.dart';
import 'package:{{nameProject}}/src/features/countries/domain/entities/country_model.dart';
import 'package:{{nameProject}}/src/features/countries/presentation/bloc/countries_bloc.dart';
import 'package:{{nameProject}}/src/core/core.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({Key? key}) : super(key: key);

  @override
  State<CountriesPage> createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  final CountriesBloc _bloc = CountriesBloc();

  @override
  void initState() {
    _bloc.add(CountriesDataEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Text(
            "Dialog",
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const AlertDialog(
                    title: Text("My Super title"),
                    content: Text("Hello World"),
                  );
                });
          },
        ),
        appBar: AppBar(
          title: const Text("Test App"),
          actions: [
            InkWell(
                onTap: () {
                  BlocProvider.of<SettingsBloc>(navigatorKey.currentContext!)
                      .add(UpdateLanguageEvent(language: sl<AppSharedPrefs>().getLang() == "en" ? "ar" : "en"));
                  setState(() {});
                },
                child: Container(
                    padding: const EdgeInsets.all(14),
                    child: Center(child: Text(sl<AppSharedPrefs>().getLang() == "en" ? S.of(context).ar : S.of(context).en))))
          ],
          leading: IconButton(
              onPressed: () {
                BlocProvider.of<SettingsBloc>(navigatorKey.currentContext!).add(UpdateModeEvent(isDarkMode: !sl<AppSharedPrefs>().getIsDarkTheme()));
                setState(() {});
              },
              icon: Icon(sl<AppSharedPrefs>().getIsDarkTheme() ? Icons.lightbulb_outline : Icons.lightbulb)),
        ),
        body: BlocConsumer(
          bloc: _bloc,
          listener: (context, state) {
            if (state is CountriesFailureState) {
              HelperUi.showSnackBar(context, state.message, type: ToastType.error);
            }
          },
          builder: (context, CountriesState state) {
            if (state is CountriesLoadingState) {
              return const AppLoader();
            } else if (state is CountriesSuccessState) {
              if (state.list.isEmpty) {
                return Center(
                  child: ReloadWidget.empty(content: S.of(context).no_records, onPressed: () {}),
                );
              }
              return ListView.builder(
                itemCount: state.list.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      _buildItem(
                        countryModel: state.list[index],
                      ),
                      const Divider()
                    ],
                  );
                },
              );
            }
            return Center(
              child: ReloadWidget.error(content: (state is CountriesFailureState) ? state.message : S.of(context).no_records, onPressed: () {}),
            );
          },
        ),
      ),
    );
  }

  Widget _buildItem({required CountryModel countryModel}) {
    return Container(
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(12),

      // margin: const EdgeInsets.all(6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if ((countryModel.coatOfArms ?? []).isNotEmpty) ...{
            Image.network(
              countryModel.coatOfArms![0],
              width: SizeConfig.h(30),
              height: SizeConfig.h(30),
            ),
            SizedBox(
              width: SizeConfig.w(10),
            )
          },
          Text(countryModel.name ?? "")
        ],
      ),
    );
  }
}
