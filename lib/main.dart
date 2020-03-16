import 'package:flutter/material.dart';
import 'package:ggg/routes/routes.dart';
import 'package:ggg/theme/style.dart';
import 'package:ggg/bloc/bloc-prov-tree.dart';
import 'package:ggg/bloc/bloc-prov.dart';
import 'package:ggg/blocs/blocs.dart';
import 'blocs/blocs.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: <BlocProvider>[
        BlocProvider<AuthBloc>(bloc: AuthBloc()),
        BlocProvider<PrefBloc>(bloc: PrefBloc()),
      ],
      child: MaterialApp(
        title: 'ExampleApp',
        theme: appTheme(),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}