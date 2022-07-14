import 'package:flutter/material.dart';
import 'package:portfolio_app/page/components/card_component.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return CardComponent(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'is simply dummy text of the printing and typesetting industry.'
            ' Lorem Ipsum has been the industrys standard dummy text ever '
            'since the 1500s, when an unknown printer took a galley of type'
            ' and scrambled it to make a type specimen book. It has survived '
            'not only five centuries, but also the leap into electronic typesetting,'
            ' remaining essentially unchanged. It was popularised in the 1960s with '
            'the release of Letraset sheets containing Lorem Ipsum passages, and more '
            'recently with desktop publishing software like Aldus PageMaker'
            ' including versions of Lorem Ipsum.',
            style: theme.bodyMedium?.copyWith(fontSize: 20, height: 1.5),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
