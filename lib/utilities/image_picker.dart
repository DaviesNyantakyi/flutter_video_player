import 'dart:io';

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/screens/add_video_screen/confirm_screen.dart';
import 'package:flutter_tiktok_clone/utilities/custom_permission_handler.dart';
import 'package:flutter_tiktok_clone/widgets/custom_bottomsheet.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class CustomVideoPicker {
  final CustomPermissionHanler _permissionHanler = CustomPermissionHanler();

  Future<File?> _pickVideo({
    required BuildContext context,
    required ImageSource imageSource,
  }) async {
    try {
      // Remove bottomsheet
      Navigator.pop(context);

      XFile? tempFile;

      // Ask for permission
      PermissionStatus cameraPermission =
          await _permissionHanler.checkPermission(
        permission: Permission.camera,
        context: context,
      );
      PermissionStatus galleryPermission =
          await _permissionHanler.checkPermission(
        permission: Permission.storage,
        context: context,
      );

      // If granted pickvideo
      if (cameraPermission.isGranted && galleryPermission.isGranted) {
        tempFile = await ImagePicker().pickVideo(
          source: imageSource,
          maxDuration: const Duration(minutes: 10),
          preferredCameraDevice: CameraDevice.rear,
        );
      }

      if (tempFile != null && tempFile.path.isNotEmpty) {
        return File(tempFile.path);
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return null;
  }

  Future<void> showVideoBottomSheet({required BuildContext context}) async {
    File? tempFile;
    await showCustomBottomSheet(
      context: context,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(FeatherIcons.camera),
            title: Text(
              'Camera',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            onTap: () async {
              tempFile = await _pickVideo(
                context: context,
                imageSource: ImageSource.camera,
              );
              if (tempFile != null) {
                // ignore: use_build_context_synchronously
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ConfirmScreen(
                      videoFile: File(tempFile!.path),
                    ),
                  ),
                );
              }
            },
          ),
          ListTile(
            leading: const Icon(FeatherIcons.image),
            title: Text(
              'Gallery',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            onTap: () async {
              tempFile = await _pickVideo(
                context: context,
                imageSource: ImageSource.gallery,
              );
              if (tempFile != null) {
                // ignore: use_build_context_synchronously
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ConfirmScreen(
                      videoFile: File(tempFile!.path),
                    ),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
