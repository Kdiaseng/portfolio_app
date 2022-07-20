import 'package:flutter/material.dart';
import 'package:portfolio_app/model/experience_model.dart';
import 'package:portfolio_app/page/components/card_component.dart';

class ContentStepper extends StatelessWidget {
  const ContentStepper({Key? key, required this.activities}) : super(key: key);

  final String activities;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
      elevation: 2,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: size.width * .6),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Atividades',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(activities,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(height: 1.5)),
            ],
          ),
        ),
      ),
    );
  }
}

class StepperExperience extends StatefulWidget {
  const StepperExperience({Key? key, required this.experience})
      : super(key: key);

  final ExperienceModel experience;

  @override
  State<StepperExperience> createState() => _StepperExperienceState();
}

class _StepperExperienceState extends State<StepperExperience> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return CardComponent(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.experience.company,
              style: theme.headline6
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(height: 20),
          Stepper(
            controlsBuilder: (context, details) {
              return Container();
            },
            currentStep: _index,
            onStepTapped: ((value) {
              setState(() {
                _index = value;
              });
            }),
            steps: widget.experience.experienceDetails
                .map((e) => Step(
                    title: Text(e.role),
                    content: ContentStepper(activities: e.descriptions)))
                .toList(),
          )
        ],
      ),
    );
  }
}
