import 'package:flutter/material.dart';
import 'package:portfolio_app/model/presentation_model.dart';
import 'package:portfolio_app/page/components/card_component.dart';

class PresentationComponent extends StatelessWidget {
  const PresentationComponent({Key? key, required this.presentation})
      : super(key: key);

  final PresentationModel presentation;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return CardComponent(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  presentation.name,
                  style: theme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 30),
                Text(
                  presentation.description,
                  textWidthBasis: TextWidthBasis.parent,
                  textAlign: TextAlign.justify,
                  textScaleFactor: 1.5,
                  style:
                      theme.bodyMedium?.copyWith(color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
          const Expanded(
            child: CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('assets/photo.jpg'),
            ),
          )
        ],
      ),
    );
  }
}
