import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/utilities/constant.dart';

Future<dynamic> showCustomBottomSheet({
  required BuildContext context,
  bool showHeader = true,
  bool isDismissible = true,
  double? initialSnap,
  double? height,
  EdgeInsets? padding,
  required Widget child,
}) async {
  return await showModalBottomSheet(
    isDismissible: isDismissible,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(kRadius),
        topRight: Radius.circular(kRadius),
      ),
    ),
    context: context,
    builder: (context) {
      return SizedBox(
        height: height,
        child: Material(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(kRadius),
            topRight: Radius.circular(kRadius),
          ),
          child: child,
        ),
      );
    },
  );
}
