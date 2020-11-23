import 'package:covid_by_country/cubit/cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:covid_by_country/models/country.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final getIt = Provider.of<GetIt>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocProvider(
        create: (context) => getIt.get<CovidCubit>(),
        child: BlocConsumer<CovidCubit, CubitState>(
          listener: (context, state) {
            if (state.apiError != null) {}
          },
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${Country().country}',
                  ),
                  Text(
                    'Total: ${Country().totalConfirmed}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    'Total: ${Country().totalDeaths}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  InputField(),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        onSubmitted: (value) => submitCityName(context, value),
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: "Enter a city",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  void submitCityName(BuildContext context, String countryName) {
    final covidCubit = context.bloc<CovidCubit>();
    covidCubit.fetchApiData(countryName);
  }
}
