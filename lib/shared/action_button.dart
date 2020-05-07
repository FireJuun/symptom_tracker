import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SharedActionButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;

  const SharedActionButton({Key key, @required this.title, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme.fromButtonThemeData(
      data: Get.theme.buttonTheme.copyWith(minWidth: Get.width / 2),
      child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          child: Text(title),
          onPressed: onPressed),
    );
  }
}
