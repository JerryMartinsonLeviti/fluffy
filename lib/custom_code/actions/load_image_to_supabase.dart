// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
//import 'package:supaflow/supaflow.dart';
import 'package:storage_client/src/types.dart';
import 'package:flutter/services.dart';

Future<ImageUploadResultStruct?> loadImageToSupabase(
    String imageFilePathString) async {
  try {
    String filePath = "Vendor";
    String fileExtension = imageFilePathString.split('.').last;
    bool success = true;
    String error = "no error";
    File file;

    if (Uri.parse(imageFilePathString).isAbsolute) {
      // It's a URL, download the file
      final response = await http.get(Uri.parse(imageFilePathString));
      if (response.statusCode == 200) {
        final tempDir = Directory.systemTemp;
        final fileName = basename(imageFilePathString);
        file = File('${tempDir.path}/$fileName');
        await file.writeAsBytes(response.bodyBytes);
      } else {
        throw Exception('Failed to download file from URL');
      }
    } else {
      // It's a local file path
      file = File(imageFilePathString);
      if (!(await file.exists())) {
        throw Exception('Local file does not exist');
      }
    }

    final fileBytes = await file.readAsBytes();

    // Define the bucket name and file path for Supabase
    const bucketName = 'UserAssets';
    filePath = basename(file.path);
    final now = DateTime.now();
    final formatter = DateFormat('yyyyMMddHHmmssSSS');
    final formatted = formatter.format(now);
    filePath = 'Vendor/$formatted.$fileExtension';
    final storageBucket = SupaFlow.client.storage.from(bucketName);
    await storageBucket.uploadBinary(
      filePath,
      fileBytes,
      fileOptions: FileOptions(contentType: null),
    );
    final url = storageBucket.getPublicUrl(filePath);
    return ImageUploadResultStruct(url: url, error: "", success: true);
  } catch (e) {
    print('Error: $e');
    return ImageUploadResultStruct(
        url: "", error: e.toString(), success: false);
  }
}
