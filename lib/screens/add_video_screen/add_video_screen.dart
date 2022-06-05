import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/utilities/image_picker.dart';

class AddVideoScreen extends StatefulWidget {
  const AddVideoScreen({Key? key}) : super(key: key);

  @override
  State<AddVideoScreen> createState() => _AddVideoScreenState();
}

class _AddVideoScreenState extends State<AddVideoScreen> {
  CustomImagePicker imagePicker = CustomImagePicker();
  Future<void> uploadVideo() async {
    // Show bottomsheet with options Gallery and Camera
    imagePicker.showVideoBottomSheet(context: context);

    // Ask for permission
    // If denied show dialog to go to settings  else continue
    // If camera is chosen go to the camera
    // Else pick video from gallery
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
