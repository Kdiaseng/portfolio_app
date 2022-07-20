import 'package:flutter/material.dart';
import 'package:portfolio_app/page/components/card_component.dart';
import 'package:provider/provider.dart';

import '../../bloc/main_bloc.dart';

class PresentationComponent extends StatelessWidget {
  const PresentationComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final provider = Provider.of<MainBloc>(context);

    return CardComponent(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  provider.presentation.name,
                  style: theme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 30),
                Text(
                  provider.presentation.description,
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
