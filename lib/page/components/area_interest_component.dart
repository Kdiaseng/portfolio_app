import 'package:flutter/material.dart';
import 'package:portfolio_app/bloc/main_bloc.dart';
import 'package:portfolio_app/page/components/card_component.dart';
import 'package:provider/provider.dart';

class Area extends StatelessWidget {
  const Area({Key? key, required this.areaLabel}) : super(key: key);

  final String areaLabel;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: SizedBox(
        width: 300,
        child: ListTile(
          contentPadding: const EdgeInsets.all(10),
          leading: const Icon(Icons.rocket_launch),
          title: Text(areaLabel),
        ),
      ),
    );
  }
}

class AreasInterestComponent extends StatelessWidget {
  const AreasInterestComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MainBloc>(context);
    final theme = Theme.of(context).textTheme;
    return CardComponent(
      child: Column(
        children: [
          Text(
            'Áreas de interesse',
            style: theme.headline4
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children:
                provider.interestAreas.map((e) => Area(areaLabel: e)).toList(),
          ),
        ],
      ),
    );
  }
}
