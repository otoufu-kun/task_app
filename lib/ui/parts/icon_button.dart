import 'package:flutter/material.dart';
import 'package:task_app/model/login_model.dart';


Widget ProfileIconButton() {
  const iconSize = 32.0;
  return IconButton(
    icon: imageUrl == null
        ? Icon(
            Icons.account_circle,
            size: iconSize,
          )
        : CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            backgroundColor: Colors.transparent,
            radius: iconSize / 2,
        ),
    onPressed: (){},
  );
}