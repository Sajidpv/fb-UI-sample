import 'package:flutter/material.dart';

import '../widgets/Avatar.dart';
import 'assets.dart';

class statusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        DP: me,
        displayStatus: false,
      ),
      title: const TextField(
        decoration: InputDecoration(
          hintText: "What,s on Your Mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
