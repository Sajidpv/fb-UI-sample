import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  const HeaderButton({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
  });

  @override
  Widget build(BuildContext context) {
    Widget VerticalDevider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          VerticalDevider,
          buttonTwo,
          VerticalDevider,
          buttonThree,
        ],
      ),
    );
  }
}
