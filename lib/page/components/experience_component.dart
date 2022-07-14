import 'package:flutter/material.dart';
import 'package:portfolio_app/page/components/card_component.dart';
import 'package:portfolio_app/page/components/stepper_exeperience_component.dart';

class ExperienceComponent extends StatelessWidget {
  const ExperienceComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return CardComponent(
      child: Column(
        children: [
          Text(
            'Experiências',
            style: theme.headline4
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 20),
          const StepperExperience()
        ],
      ),
    );
  }
}
