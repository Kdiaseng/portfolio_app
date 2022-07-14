import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({Key? key,required this.child, this.padding}) : super(key: key);

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(40),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.5, color: Colors.grey.shade200),
        ),
      ),
      child: child,
    );
  }
}
