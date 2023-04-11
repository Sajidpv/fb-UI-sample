import 'package:fb_ui/widgets/suggetionCard.dart';
import 'package:flutter/material.dart';

import '../sections/assets.dart';

class suggestion extends StatelessWidget {
  const suggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 440,
      child: Column(
        children: [
          ListTile(
              title: const Text("People You May Know"),
              trailing: IconButton(
                icon: Icon(Icons.more_horiz, color: Colors.grey.shade700),
                onPressed: () {
                  debugPrint("take to more");
                },
              )),
          SizedBox(
              height: 380,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  sCard(
                    name: "Sajid PV",
                    avatar: me,
                    addFriend: () {
                      debugPrint("Sent Request");
                    },
                    mutualFriend: "4 ",
                    removeFriend: () {
                      debugPrint("Remove Suggestion");
                    },
                  ),
                  sCard(
                    name: "Sainul Abid",
                    avatar: sainu,
                    addFriend: () {
                      debugPrint("Sent Request");
                    },
                    mutualFriend: "2 ",
                    removeFriend: () {
                      debugPrint("Remove Suggestion");
                    },
                  ),
                  sCard(
                      name: "Wings of Karuvanpoyil",
                      avatar: wings,
                      addFriend: () {
                        debugPrint("Request Send");
                      },
                      mutualFriend: "25",
                      removeFriend: () {
                        debugPrint("Remove Suggestion");
                      })
                ],
              ))
        ],
      ),
    );
  }
}
