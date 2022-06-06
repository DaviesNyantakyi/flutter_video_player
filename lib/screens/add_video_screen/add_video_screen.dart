import 'dart:io';

import 'package:feather_icons/feather_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_tiktok_clone/screens/add_video_screen/confirm_screen.dart';
import 'package:flutter_tiktok_clone/screens/services/fire_storage.dart';
import 'package:flutter_tiktok_clone/utilities/image_picker.dart';
import 'package:flutter_tiktok_clone/widgets/snackbar.dart';

class AddVideoScreen extends StatefulWidget {
  const AddVideoScreen({Key? key}) : super(key: key);

  @override
  State<AddVideoScreen> createState() => _AddVideoScreenState();
}

class _AddVideoScreenState extends State<AddVideoScreen> {
  CustomVideoPicker videoPicker = CustomVideoPicker();
  Future<void> uploadVideo() async {
    try {
      await videoPicker.showVideoBottomSheet(context: context);
    } on FirebaseException catch (e) {
      showCustomSnackBar(
        context: context,
        type: CustomSnackBarType.error,
        message: e.message ?? '',
      );
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      EasyLoading.dismiss();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(FeatherIcons.upload),
              onPressed: uploadVideo,
            ),
            Text(
              'Upload a new video',
              style: Theme.of(context).textTheme.bodyText2,
            )
          ],
        ),
      ),
    );
  }
}
