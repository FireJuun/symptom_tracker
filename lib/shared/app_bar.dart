import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SharedAppBar extends AppBar {
  SharedAppBar({@required String title, List<Widget> actions})
      : super(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: title != null
              ? Text(
                  title,
                  style: Get.theme.textTheme.headline6,
                )
              : null,
          actions: actions,
        );
}
