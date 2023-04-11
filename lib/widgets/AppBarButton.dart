import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color buttonColor;

  const AppBarButton({
    required this.buttonAction,
    required this.buttonIcon,
    this.buttonColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
          icon: Icon(
            buttonIcon,
            color: buttonColor,
          ),
          onPressed: buttonAction),
    );
  }
}
