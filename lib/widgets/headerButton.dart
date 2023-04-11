import 'package:flutter/material.dart';

Widget headerButton({
  required String buttonText,
  required IconData buttonIcon,
  required void Function() buttonAction,
  required Color buttonColor,
  Color textColor=Colors.black,
})
{
  return TextButton.icon(onPressed: buttonAction,
    icon: Icon(buttonIcon,
        color:buttonColor),
    label: Text(buttonText,style: TextStyle(color: textColor),),
  );

}