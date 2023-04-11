import 'package:flutter/material.dart';

class blueTick extends StatelessWidget {
  const blueTick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue[700],
      ),
      child: const Icon(
        Icons.check,
        color: Colors.white,
        size: 10,
      ),
    );
  }
}
