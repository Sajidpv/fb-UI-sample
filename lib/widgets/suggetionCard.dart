import 'package:flutter/material.dart';

class sCard extends StatelessWidget {
  const sCard({
    required this.name,
    required this.avatar,
    required this.addFriend,
    required this.mutualFriend,
    required this.removeFriend,
  });

  final String name;
  final String mutualFriend;
  final String avatar;
  final void Function() addFriend;
  final void Function() removeFriend;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      width: 300,
      child: Stack(
        children: [
          sImage(),
          sDetails(),
        ],
      ),
    );
  }

  Widget sDetails() {
    return Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: Container(
          height: 132,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 1),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Column(
            children: [
              ListTile(
                title: Text(name),
                subtitle: Text("${mutualFriend}Mutual Friends"),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconButton(
                        buttonAction: addFriend,
                        iconColor: Colors.white,
                        textColor: Colors.white,
                        buttonIcon: Icons.add_moderator,
                        buttonColor: Colors.blue.shade700,
                        buttonText: "Add Friend"),
                    blankButton(
                        buttonAction: removeFriend,
                        buttonText: "Remove",
                        textColor: Colors.black,
                        buttonColor: Colors.grey.shade300),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget blankButton({
    required void Function() buttonAction,
    required String buttonText,
    required Color textColor,
    required Color buttonColor,
  }) {
    return TextButton(
      onPressed: buttonAction,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
      ),
      child: Text(
        buttonText,
        style: TextStyle(color: textColor),
      ),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color iconColor,
    required Color buttonColor,
    required Color textColor,
    required String buttonText,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(buttonIcon, color: iconColor),
      label: Text(
        buttonText,
        style: TextStyle(color: textColor),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
      ),
    );
  }

  Widget sImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: Image.asset(
          avatar,
          height: 249,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
