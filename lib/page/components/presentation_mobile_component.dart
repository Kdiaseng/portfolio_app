import 'package:flutter/material.dart';
import 'package:portfolio_app/page/components/card_component.dart';

class PresentationMobileComponent extends StatelessWidget {
  const PresentationMobileComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return CardComponent(
      child: Column(
        children: [
          const CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage('assets/photo.jpg'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kaleb Dias da Silva',
                style: theme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 30),
              Text(
                'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys'
                    ' standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled '
                    'it to make a type specimen book',
                textWidthBasis: TextWidthBasis.parent,
                textAlign: TextAlign.justify,
                textScaleFactor: 1.5,
                style:
                theme.bodyMedium?.copyWith(color: Colors.grey.shade600),
              ),
            ],
          )
        ],
      ),
    );
  }
}
