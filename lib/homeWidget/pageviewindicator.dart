import 'package:flutter/material.dart';

class Viewpageindicator extends StatelessWidget {
  final bool isActied;
  const Viewpageindicator({
    Key? key,
    required this.isActied,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 2,
      width: 14,
      decoration: BoxDecoration(
        color: isActied
            ? Colors.blue.withOpacity(0.5)
            : Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
