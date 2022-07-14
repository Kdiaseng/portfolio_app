import 'package:flutter/material.dart';
import 'package:portfolio_app/page/components/card_component.dart';

class ContentStepper extends StatelessWidget {
  const ContentStepper({Key? key}) : super(key: key);

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
            children: const [
              Text(
                'Atividades',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                  'is simply dummy text of the printing and typesetting industry.'
                  ' Lorem Ipsum has been the industrys standard dummy text ever '
                  ' Lorem Ipsum has been the industrys standard dummy text ever '
                  ' Lorem Ipsum has been the industrys standard dummy text ever '
                  ' Lorem Ipsum has been the industrys standard dummy text ever '
                  ' Lorem Ipsum has been the industrys standard dummy text ever '
                  ' Lorem Ipsum has been the industrys standard dummy text ever '
                  ' Lorem Ipsum has been the industrys standard dummy text ever '
                  ' Lorem Ipsum has been the industrys standard dummy text ever '
                  ' Lorem Ipsum has been the industrys standard dummy text ever '
                  ' Lorem Ipsum has been the industrys standard dummy text ever '
                  'since the 1500s, when an unknown printer took a galley of type',
                  textAlign: TextAlign.justify,
                  style: TextStyle(height: 1.5)),
            ],
          ),
        ),
      ),
    );
  }
}

class StepperExperience extends StatelessWidget {
  const StepperExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return CardComponent(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'IATECAM',
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
              currentStep: 0,
              steps: const [
                Step(
                  title: Text('Desenvolvedor JR'),
                  content: ContentStepper(),
                ),
                Step(
                  title: Text('Desenvolvedor PL'),
                  content: ContentStepper(),
                ),
                Step(
                  title: Text('Desenvolvedor Sr'),
                  content: ContentStepper(),
                ),
              ])
        ],
      ),
    );
  }
}
