import 'package:flutter/material.dart';
import 'package:portfolio_app/model/presentation_model.dart';
import 'package:portfolio_app/page/components/card_component.dart';

class PresentationMobileComponent extends StatelessWidget {
  const PresentationMobileComponent({Key? key, required this.presentationModel})
      : super(key: key);

  final PresentationModel presentationModel;

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
                presentationModel.name,
                style: theme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 30),
              Text(
                presentationModel.description,
                textWidthBasis: TextWidthBasis.parent,
                textAlign: TextAlign.justify,
                textScaleFactor: 1.5,
                style: theme.bodyMedium?.copyWith(color: Colors.grey.shade600),
              ),
            ],
          )
        ],
      ),
    );
  }
}
