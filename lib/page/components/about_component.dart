import 'package:flutter/material.dart';
import 'package:portfolio_app/page/components/card_component.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({Key? key, required this.aboutMe}) : super(key: key);

  final String aboutMe;

  @override
  Widget build(BuildContext context) {
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
                aboutMe,
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
