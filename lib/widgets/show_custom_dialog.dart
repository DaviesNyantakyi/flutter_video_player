import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/utilities/constant.dart';

Future<dynamic> showCustomDialog({
  required BuildContext context,
  Widget? title,
  Widget? content,
  List<Widget>? actions,
  bool barrierDismissible = true,
}) async {
  return await showDialog<String?>(
    barrierDismissible: barrierDismissible,
    context: context,
    builder: (BuildContext context) => AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(kRadius),
        ),
      ),
      title: title,
      content: content,
      actions: actions,
    ),
  );
}
