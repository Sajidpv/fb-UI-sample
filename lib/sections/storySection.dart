import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/storyCard.dart';
import 'assets.dart';

class storySection extends StatelessWidget {
  const storySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          storyCard(
            label: "Add to Story",
            story: me,
            avatar: me,
            createStory: true,
          ),
          storyCard(
            label: "DaNusH Nellikoth",
            story: dst,
            avatar: d,
          ),
          storyCard(
            label: "Shaz Chelsea",
            story: shazst,
            avatar: shaz,
          ),
          storyCard(
            label: "Verity Media",
            story: verityst,
            avatar: verity,
          ),
          storyCard(
            label: "DaNusH Nellikoth",
            story: dst,
            avatar: d,
          ),
          storyCard(
            label: "Shaz Chelsea",
            story: shazst,
            avatar: shaz,
          ),
          storyCard(
            label: "Verity Media",
            story: verityst,
            avatar: verity,
          )
        ],
      ),
    );
  }
}
