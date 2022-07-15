import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart' as constants;

class MenuEndDrawer extends StatelessWidget {
  const MenuEndDrawer({Key? key, required this.label, required this.onClick})
      : super(key: key);

  final String label;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: ListTile(
        title: Text(label),
        onTap: onClick,
      ),
    );
  }
}

class EndDrawerComponent extends StatelessWidget {
  const EndDrawerComponent({Key? key, required this.onClick}) : super(key: key);

  final Function(int) onClick;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Wrap(
        runSpacing: 5,
        children: [
          MenuEndDrawer(
              label: 'Sobre', onClick: () => onClick(constants.menuAbout)),
          MenuEndDrawer(
              label: 'Formação',
              onClick: () => onClick(constants.menuAcademic)),
          MenuEndDrawer(
              label: 'Experiência',
              onClick: () => onClick(constants.menuExperience)),
          MenuEndDrawer(
              label: 'Habilidades e competêcias',
              onClick: () => onClick(constants.menuAbility)),
          MenuEndDrawer(
              label: 'Áreas de interesse',
              onClick: () => onClick(constants.menuAreaInterest)),
        ],
      ),
    );
  }
}
