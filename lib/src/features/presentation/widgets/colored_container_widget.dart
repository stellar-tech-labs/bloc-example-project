import 'package:example_bloc/src/core/constants/dimes.dart';
import 'package:example_bloc/src/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class ColoredContainer extends StatelessWidget {
  const ColoredContainer(
      {super.key, this.onTap, this.color, required this.count});

  final VoidCallback? onTap;
  final Color? color;
  final int count;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: context.width * 0.5 - d_2_50,
        height: d_coloredContainerHeight,
        color: color,
        child: Center(
          child: Text(
            '$count',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
