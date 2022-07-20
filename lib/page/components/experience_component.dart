import 'package:flutter/material.dart';
import 'package:portfolio_app/bloc/main_bloc.dart';
import 'package:portfolio_app/page/components/card_component.dart';
import 'package:portfolio_app/page/components/stepper_exeperience_component.dart';
import 'package:provider/provider.dart';

class ExperienceComponent extends StatelessWidget {
  const ExperienceComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final provider = Provider.of<MainBloc>(context);

    List<Widget> widgets = [
      Text(
        'Experiências',
        style: theme.headline4
            ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      const SizedBox(height: 20)
    ];

    final stepperExperiences = provider.experiences
        .map(
            (experienceModel) => StepperExperience(experience: experienceModel))
        .toList();

    return CardComponent(
      child: Column(
        children: widgets + stepperExperiences,
      ),
    );
  }
}
