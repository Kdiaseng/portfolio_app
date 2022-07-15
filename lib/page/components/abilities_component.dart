import 'package:flutter/material.dart';
import 'package:portfolio_app/page/components/card_component.dart';

class ItemAbility extends StatelessWidget {
  const ItemAbility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        children: const [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('assets/flutter_icon.png'),
          ),
          SizedBox(height: 8),
          Text('Flutter', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(
            'Flutter é top pq é multiplatarforma ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}

class AbilitiesComponent extends StatelessWidget {
  const AbilitiesComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return CardComponent(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Habilidades e competêcias',
            style: theme.headline4
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 30),
          Wrap(
            runSpacing: 20,
            children: const [
              ItemAbility(),
              ItemAbility(),
              ItemAbility(),
              ItemAbility(),
              ItemAbility(),
            ],
          )
        ],
      ),
    );
  }
}
