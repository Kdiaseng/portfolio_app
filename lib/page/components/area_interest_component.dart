import 'package:flutter/material.dart';
import 'package:portfolio_app/page/components/card_component.dart';

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
    final areas = [
      'Líder de Projetos',
      'Desenvolvedor Mobile Flutter',
      'Denvolvedor Mobile Android',
      'Líder Tecnico',
      'Engenheiro de Softaware'
    ];
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
            children: areas.map((e) => Area(areaLabel: e)).toList(),
          ),
        ],
      ),
    );
  }
}
