import 'package:flutter/material.dart';

class StepCounter extends StatelessWidget {
  final double width;

  const StepCounter({Key? key, required this.width,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 2,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        Positioned(
          left: 0,
          child: Container(
            width: width,
            height: 2,
            color: const Color(0xFFFFAA07),
          ),
        )
      ],
    );
  }
}
