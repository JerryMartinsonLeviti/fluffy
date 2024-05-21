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

Future<bool> onReorderImageAssets(
  int? oldIndex,
  int? newIndex,
  List<ImageAssetsRow>? imageAssets,
) async {
  if (oldIndex == null || newIndex == null || imageAssets == null) {
    throw Exception("Invalid Parameters");
  }

  if (oldIndex < newIndex) {
    newIndex -= 1;
  }

  final ImageAssetsRow item = imageAssets.removeAt(oldIndex);
  imageAssets.insert(newIndex, item);

  final supabase = SupaFlow.client;

  for (int i = 0; i < imageAssets.length; i++) {
    final response = await supabase
        .from('ImageAssets')
        .update({'order': i})
        .eq('PK_ImageAssets', imageAssets[i].pKImageAssets)
        .execute();
  }

  return true;
}
