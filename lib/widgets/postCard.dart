import 'package:fb_ui/sections/HeaderButtonSection.dart';
import 'package:fb_ui/sections/assets.dart';
import 'package:fb_ui/home.dart';
import 'package:fb_ui/widgets/Avatar.dart';
import 'package:fb_ui/widgets/headerButton.dart';

import 'package:flutter/material.dart';

import 'blueTick.dart';

class postCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postImage;
  final bool verified;
  final String postCaption;
  final String commentCount;
  final String likeCount;
  final String shareCount;

  const postCard(
      {this.name = "Facebook User",
      this.postCaption = "",
      this.verified = false,
      required this.publishedAt,
      required this.avatar,
      required this.postImage,
      required this.commentCount,
      required this.likeCount,
      required this.shareCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        postHeader(),
        caption(),
        post(),
        footerSection(),
        Divider(
          thickness: 1,
          color: Colors.grey.shade300,
        ),
        HeaderButton(
            buttonOne: headerButton(
                buttonText: "Like",
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonAction: () {
                  debugPrint("Like the post");
                },
                buttonColor: Colors.grey.shade700),
            buttonTwo: headerButton(
                buttonAction: () {
                  debugPrint("Add your Comment");
                },
                buttonColor: Colors.grey.shade700,
                buttonIcon: Icons.message_outlined,
                buttonText: "Comment"),
            buttonThree: headerButton(
                buttonText: "Share",
                buttonIcon: Icons.share_outlined,
                buttonAction: () {
                  debugPrint("Share post");
                },
                buttonColor: Colors.grey.shade700)),
        thickDevider,
      ],
    );
  }

  Widget caption() {
    return postCaption != ""
        ? Container(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Text(postCaption,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                )),
          )
        : const SizedBox();
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  )),
              text(count: "${likeCount}K"),
            ],
          ),
          Row(
            children: [
              text(count: "${commentCount}K Comments"),
              const SizedBox(width: 10),
              text(count: "${shareCount}K Shares"),
              const SizedBox(width: 10),
              Avatar(
                DP: me,
                dimention: 25,
              ),
              Container(
                width: 5,
                height: 15,
                margin: const EdgeInsets.only(bottom: 25, right: 10),
                child: IconButton(
                    onPressed: () {
                      debugPrint("click dropdown menu");
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget text({required String count}) {
    return Text(
      count,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget post() {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Image.asset(postImage),
    );
  }

  Widget postHeader() {
    return ListTile(
      leading: Avatar(
        DP: avatar,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 10),
          verified ? const blueTick() : const SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            publishedAt,
          ),
          const SizedBox(width: 10),
          Icon(
            Icons.public,
            size: 15,
            color: Colors.grey[700],
          ),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.more_horiz,
          color: Colors.grey,
        ),
        onPressed: () {
          debugPrint("Click to More");
        },
      ),
    );
  }
}
