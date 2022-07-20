import 'package:flutter/material.dart';
import 'package:portfolio_app/bloc/main_bloc.dart';
import 'package:portfolio_app/data/data.dart' as Data;
import 'package:portfolio_app/page/landing_page.dart';
import 'package:portfolio_app/util/custom_scroll_behavior.dart';
import 'package:provider/provider.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => MainBloc(
          Data.presentationModel,
          Data.aboutMe,
          Data.graduations,
          Data.experiences,
          Data.abilities,
          Data.interestAreas),
      child: MaterialApp(
        scrollBehavior: CustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LandingPage(),
      ),
    );
  }
}
