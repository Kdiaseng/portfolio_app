import 'package:flutter/material.dart';
import 'package:portfolio_app/page/components/card_component.dart';

class HeaderMobileComponent extends StatelessWidget {
  const HeaderMobileComponent({Key? key, required this.onClick}) : super(key: key);

  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return CardComponent(
        child: Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: onClick,
          ),
        ),
        padding: const EdgeInsets.all(20));
  }
}
