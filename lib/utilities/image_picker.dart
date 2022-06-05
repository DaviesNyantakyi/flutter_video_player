import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/utilities/custom_permission_handler.dart';
import 'package:flutter_tiktok_clone/widgets/custom_bottomsheet.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class CustomImagePicker {
  final CustomPermissionHanler _permissionHanler = CustomPermissionHanler();
  Future<void> _pickVideo({
    required BuildContext context,
    required ImageSource imageSource,
  }) async {
    try {
      // Remove bottomsheet
      Navigator.pop(context);
      PermissionStatus? permissionStatus;

      XFile? selectedFile;

      // Image source is camera
      if (imageSource == ImageSource.camera) {
        // Ask for permission
        permissionStatus = await _permissionHanler.checkPermission(
          permission: Permission.camera,
          context: context,
        );

        // If granted pickvideo
        if (permissionStatus.isGranted) {
          selectedFile = await ImagePicker().pickVideo(
            source: imageSource,
            maxDuration: const Duration(minutes: 10),
            preferredCameraDevice: CameraDevice.rear,
          );
        }
      }

      // Image source is gallery
      if (imageSource == ImageSource.gallery) {
        // Ask for permission
        permissionStatus = await _permissionHanler.checkPermission(
          permission: Permission.storage,
          context: context,
        );
        // If granted pickImage
        if (permissionStatus.isGranted) {
          selectedFile = await ImagePicker().pickVideo(
            source: imageSource,
            maxDuration: const Duration(minutes: 10),
            preferredCameraDevice: CameraDevice.rear,
          );
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> showVideoBottomSheet({required BuildContext context}) async {
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
            onTap: () => _pickVideo(
              context: context,
              imageSource: ImageSource.camera,
            ),
          ),
          ListTile(
            leading: const Icon(FeatherIcons.image),
            title: Text(
              'Gallery',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            onTap: () => _pickVideo(
              context: context,
              imageSource: ImageSource.gallery,
            ),
          )
        ],
      ),
    );
  }
}
