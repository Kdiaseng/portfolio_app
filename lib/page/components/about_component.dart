import 'package:flutter/material.dart';
import 'package:portfolio_app/bloc/main_bloc.dart';
import 'package:portfolio_app/page/components/card_component.dart';
import 'package:provider/provider.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MainBloc>(context);

    final theme = Theme.of(context).textTheme;
    return CardComponent(
      child: Column(
        children: [
          Text(
            'Sobre',
            style: theme.headline4
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                provider.aboutMe,
                style: theme.bodyMedium?.copyWith(fontSize: 20, height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
