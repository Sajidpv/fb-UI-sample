import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String DP;
  final bool displayStatus;
  final bool displayBorder;
  final double dimention;
  const Avatar({
    required this.DP,
    this.displayStatus = false,
    this.displayBorder = false,
    this.dimention = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  )
                : const Border(),
          ),
          padding: const EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                DP,
                width: dimention,
                height: dimention,
              )),
        ),
        displayStatus
            ? Positioned(
                bottom: 0,
                right: 10,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
