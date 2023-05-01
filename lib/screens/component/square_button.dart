import 'package:flutter/material.dart';

import '../../extensions/extensions.dart';

class SquareButton extends StatelessWidget {
  const SquareButton({
    super.key,
    required this.color,
    required this.text,
    this.onTap,
    this.onTapUp,
    this.onTapDown,
  });

  final Color color;
  final Widget text;
  final VoidCallback? onTap;
  final Function(TapUpDetails)? onTapUp;
  final Function(TapDownDetails)? onTapDown;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onTapUp: onTapUp,
      onTapDown: onTapDown,
      child: Container(
        width: context.screenSize.width / 8,
        height: context.screenSize.width / 8,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: text,
            ),
          ],
        ),
      ),
    );
  }
}
