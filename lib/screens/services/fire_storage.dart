import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

const userProfilePath = 'images/profile_images';

class FireStorage {
  final _fireStore = FirebaseStorage.instance;

  Future<String?> uploadFile({
    required File? file,
  }) async {
    final id = const Uuid().v1();
    try {
      if (file != null) {
        print('called');
        await _fireStore.ref('videos/$id').putFile(file);
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return null;
  }
}
