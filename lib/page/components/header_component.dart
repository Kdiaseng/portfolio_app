import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/page/components/card_component.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({Key? key, required this.onClick, required this.label})
      : super(key: key);

  final Function() onClick;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      child: Text(label,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key, required this.onClick}) : super(key: key);

  final Function(int) onClick;

  @override
  Widget build(BuildContext context) {
    return CardComponent(
      color: Colors.black87,
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MenuHeader(onClick: () => onClick(menuAbout), label: "Sobre"),
          MenuHeader(onClick: () => onClick(menuAcademic), label: "Formação"),
          MenuHeader(
              onClick: () => onClick(menuExperience), label: "Experiências"),
          MenuHeader(
              onClick: () => onClick(menuAbility),
              label: "Habilidade e competêcias"),
          MenuHeader(
              onClick: () => onClick(menuAreaInterest),
              label: "Áreas de interesse")
        ],
      ),
    );
  }
}
