import 'package:fb_ui/sections/HeaderButtonSection.dart';
import 'package:fb_ui/sections/assets.dart';
import 'package:fb_ui/sections/roomSection.dart';
import 'package:fb_ui/sections/statusSection.dart';
import 'package:fb_ui/sections/storySection.dart';
import 'package:fb_ui/widgets/AppBarButton.dart';
import 'package:fb_ui/widgets/postCard.dart';
import 'package:fb_ui/widgets/suggestionSection.dart';
import 'package:flutter/material.dart';

import 'widgets/headerButton.dart';

Widget thickDevider = Divider(thickness: 10, color: Colors.grey[300]);
Widget thinDevider = Divider(
  thickness: 1,
  color: Colors.grey[300],
);

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              "facebook",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              AppBarButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("Taking You to Search");
                },
              ),
              AppBarButton(
                buttonIcon: Icons.message,
                buttonAction: () {
                  print("Taking You to messanger");
                },
              )
            ],
          ),
          body: ListView(
            children: [
              statusSection(),
              thinDevider,
              HeaderButton(
                buttonOne: headerButton(
                    buttonAction: () {
                      print("take you to the live!");
                    },
                    buttonIcon: Icons.video_call,
                    buttonColor: Colors.red,
                    buttonText: "Live!"),
                buttonTwo: headerButton(
                    buttonText: "Photo",
                    buttonIcon: Icons.photo_library,
                    buttonAction: () {
                      debugPrint("To take photos!");
                    },
                    buttonColor: Colors.green),
                buttonThree: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    debugPrint("Create room");
                  },
                  buttonColor: Colors.purple,
                ),
              ),
              thickDevider,
              roomSection(),
              thickDevider,
              const storySection(),
              thickDevider,
              postCard(
                avatar: an,
                publishedAt: "5h",
                name: "Amjed Ali",
                postImage: me,
                verified: true,
                postCaption: "Mwonjan😍😍",
                likeCount: "10",
                commentCount: "1.2",
                shareCount: "2",
              ),
              const suggestion(),
              postCard(
                name: "Verity Media",
                publishedAt: "2h",
                avatar: verity,
                postImage: verityst,
                likeCount: "2",
                commentCount: "1",
                shareCount: "1.1",
              ),
              const suggestion(),
              postCard(
                  publishedAt: "7h",
                  avatar: d,
                  postImage: dst,
                  commentCount: "1",
                  likeCount: ".4",
                  shareCount: "0"),
              postCard(
                  name: "Sajid Muhammed",
                  verified: true,
                  postCaption: "L O S T",
                  publishedAt: "Just now",
                  avatar: me,
                  postImage: lost,
                  commentCount: "100",
                  likeCount: "500",
                  shareCount: "50")
            ],
          )),
    );
  }
}
