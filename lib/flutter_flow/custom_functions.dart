import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';

List<String> convertCartStateEnumToStringList(
    List<CartStates>? cartStateEnumValues) {
  if (cartStateEnumValues == null) {
    return [];
  }

  return cartStateEnumValues.map((e) => e.serialize()).toList();
}

String convertCartStateEnumToString(CartStates cartStateEnumValue) {
  return cartStateEnumValue.serialize();
}
