import 'package:flutter/material.dart';

import 'AppBarButton.dart';
import 'Avatar.dart';

class storyCard extends StatelessWidget {
  final String label;
  final String story;
  final String avatar;
  final bool createStory;

  const storyCard({
    required this.label,
    required this.story,
    required this.avatar,
    this.createStory = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          createStory
              ? Positioned(
                  top: 5,
                  left: 5,
                  child: AppBarButton(
                    buttonAction: () {
                      debugPrint("Add new Story!");
                    },
                    buttonIcon: Icons.add,
                    buttonColor: Colors.blue,
                  ),
                )
              : Positioned(
                  top: 5,
                  left: 5,
                  child: Avatar(
                    DP: avatar,
                    displayBorder: true,
                    dimention: 35,
                  ),
                ),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
