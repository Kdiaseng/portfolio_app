import 'package:flutter/material.dart';
import 'package:portfolio_app/page/components/card_academic_component.dart';
import 'package:portfolio_app/page/components/card_component.dart';

import '../../model/academic_model.dart';

class AcademicComponent extends StatelessWidget {
  const AcademicComponent({Key? key}) : super(key: key);

  static final graduation = AcademicModel(
      graduate: 'Graduação : Engenharia da computação',
      place: 'UEA - Universidade Estatual do Amazonas',
      period: '2010 - 2015');

  static final posGraduation = AcademicModel(
      graduate: 'Pós - Graduação : MBA Gerenciamento de Projetos',
      place: 'UNIP - Universidade Paulista',
      period: '2016 - 2017');

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return CardComponent(
      child: Column(
        children: [
          Text(
            'Formação',
            style: theme.headline4
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 30),
          Wrap(
            runSpacing: 10,
            spacing: 20,
            children: [
              CardAcademicComponent(academicModel: graduation),
              CardAcademicComponent(academicModel: posGraduation),
            ],
          )
        ],
      ),
    );
  }
}
