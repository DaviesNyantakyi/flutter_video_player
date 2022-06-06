import 'package:flutter/material.dart';

enum CustomSnackBarType { success, error, normal }

dynamic showCustomSnackBar({
  required BuildContext context,
  required CustomSnackBarType type,
  required String message,
}) {
  Color? backgroundColor;
  Color textColor;
  switch (type) {
    case CustomSnackBarType.error:
      backgroundColor = Colors.red;
      textColor = Colors.white;
      break;
    case CustomSnackBarType.success:
      backgroundColor = Colors.green;
      textColor = Colors.white;
      break;

    default:
      backgroundColor = Colors.grey;
      textColor = Colors.black;
      break;
  }
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(16),
      backgroundColor: backgroundColor,
      duration: const Duration(seconds: 5),
      content: Text(
        message,
        style:
            Theme.of(context).textTheme.bodyText1?.copyWith(color: textColor),
      ),
    ),
  );
}
