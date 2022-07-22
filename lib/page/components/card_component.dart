import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({Key? key, required this.child, this.padding, this.color})
      : super(key: key);

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: color,
        border: Border(
          bottom: BorderSide(width: 0.1, color: Colors.grey.shade200),
        ),
      ),
      child: child,
    );
  }
}
