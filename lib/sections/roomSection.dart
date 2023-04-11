import 'package:flutter/material.dart';
import '../widgets/Avatar.dart';
import 'assets.dart';

class roomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10),
          children: [
            roomButton(),
            Avatar(DP: me, displayStatus: true),
            Avatar(DP: an, displayStatus: true),
            Avatar(DP: d, displayStatus: true),
            Avatar(DP: sainu, displayStatus: true),
            Avatar(DP: shaz, displayStatus: true),
            Avatar(DP: verity, displayStatus: true),
            Avatar(DP: wings, displayStatus: true),
            Avatar(DP: me, displayStatus: true),
            Avatar(DP: an, displayStatus: true),
            Avatar(DP: d, displayStatus: true),
            Avatar(DP: sainu, displayStatus: true),
            Avatar(DP: shaz, displayStatus: true),
            Avatar(DP: verity, displayStatus: true),
            Avatar(DP: wings, displayStatus: true),
          ],
        ));
  }

  Widget roomButton() {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0))),
        ),
        onPressed: () {
          debugPrint("Creating room");
        },
        icon: const Icon(Icons.video_call, color: Colors.purple),
        label: const Text(
          "Create\nRoom",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
