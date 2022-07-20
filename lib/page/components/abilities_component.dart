import 'package:flutter/material.dart';
import 'package:portfolio_app/bloc/main_bloc.dart';
import 'package:portfolio_app/model/ability_model.dart';
import 'package:portfolio_app/page/components/card_component.dart';
import 'package:portfolio_app/util/responsive.dart';
import 'package:provider/provider.dart';

class ItemAbility extends StatelessWidget {
  const ItemAbility({Key? key, required this.ability}) : super(key: key);

  final AbilityModel ability;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('assets/flutter_icon.png'),
          ),
          const SizedBox(height: 8),
          Text(ability.name,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(
            ability.description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
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
    final provider = Provider.of<MainBloc>(context);
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
          _getListAbilitiesToPlatform(context, provider.abilities)
        ],
      ),
    );
  }

  Widget _abilitiesToMobile(List<AbilityModel> abilities) =>
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: abilities.map((e) => ItemAbility(ability: e)).toList(),
        ),
      );

  Widget _abilitiesToDesktop(List<AbilityModel> abilities) => Wrap(
        runSpacing: 20,
        children: abilities.map((e) => ItemAbility(ability: e)).toList(),
      );

  Widget _getListAbilitiesToPlatform(context, List<AbilityModel> abilities) {
    if (Responsive.isMobile(context)) {
      return _abilitiesToMobile(abilities);
    }
    return _abilitiesToDesktop(abilities);
  }
}
