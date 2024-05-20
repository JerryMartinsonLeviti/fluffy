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

Future<String?> loadImageToSupabase(String imageFilePathString) async {
  // Add your function code here!
  String filePath = "Vendor";
  String fileExtension = imageFilePathString.split('.').last;
  try {
    String path = imageFilePathString;
    File file;


    if (Uri.parse(path).isAbsolute) {
      // It's a URL, download the file
      final response = await http.get(Uri.parse(path));
      if (response.statusCode == 200) {
        final tempDir = Directory.systemTemp;
        final fileName = basename(path);
        file = File('${tempDir.path}/$fileName');
        await file.writeAsBytes(response.bodyBytes);
      } else {
        throw Exception('Failed to download file from URL');
      }
    } else {
      // It's a local file path
      file = File(path);
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
    return storageBucket.getPublicUrl(filePath);
  } catch (e) {
    print('Error: $e');
    return 'Error : $e.  $filePath';
  }
}
