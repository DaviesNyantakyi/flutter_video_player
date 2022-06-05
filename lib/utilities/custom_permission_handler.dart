import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/widgets/show_custom_dialog.dart';
import 'package:permission_handler/permission_handler.dart';

class CustomPermissionHanler {
  Future<PermissionStatus> checkPermission({
    required Permission permission,
    required BuildContext context,
  }) async {
    PermissionStatus status = await permission.request();

    if (status.isPermanentlyDenied) {
      _showPermissionDialog(context: context);
    }
    return status;
  }

  Future<void> _showPermissionDialog({required BuildContext context}) async {
    await showCustomDialog(
      context: context,
      title: Text(
        'Allow TikZoinks access to your device\'s camera, photo\'s, media, and files.',
        style: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      content: Text(
        'This allows you to upload photo\'s or videos',
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Not now',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
          onPressed: () async {
            Navigator.pop(context);
            await AppSettings.openAppSettings();
          },
          child: Text(
            'Settings',
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
