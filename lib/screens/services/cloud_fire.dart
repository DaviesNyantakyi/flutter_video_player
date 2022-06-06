import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/utilities/connection_checker.dart';

class CloudFire {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final _connectionChecker = ConnectionNotifier();

  Future<void> updateVideo({required String? photoURL}) async {
    try {
      final hasConnection = await _connectionChecker.checkConnection();

      if (hasConnection) {
        // await _firebaseFirestore.collection('vidoes').add(data);
      } else {
        throw ConnectionNotifier.connectionException;
      }
    } on FirebaseException catch (e) {
      debugPrint(e.toString());
      rethrow;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
