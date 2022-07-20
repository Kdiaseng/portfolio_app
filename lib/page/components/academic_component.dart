import 'package:flutter/material.dart';
import 'package:portfolio_app/bloc/main_bloc.dart';
import 'package:portfolio_app/page/components/card_academic_component.dart';
import 'package:portfolio_app/page/components/card_component.dart';
import 'package:provider/provider.dart';


class AcademicComponent extends StatelessWidget {
  const AcademicComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MainBloc>(context);
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
            children: provider.academics
                .map((item) => CardAcademicComponent(academicModel: item))
                .toList(),
          )
        ],
      ),
    );
  }
}
