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

int stringToCents(String dollarStringWithDecimal) {
  // Split the string at the decimal point
  List<String> parts = dollarStringWithDecimal.split('.');

  // If there is no decimal point, multiply by 100 and return
  if (parts.length == 1) {
    return int.parse(parts[0]) * 100;
  }

  // If there is a decimal point, process the dollars and cents
  int dollars = int.parse(parts[0]);
  // Pad the cents to ensure two digits and parse as integer
  int cents = int.parse(parts[1].padRight(2, '0'));

  // Combine dollars and cents into total cents
  int totalCents = dollars * 100 + cents;
  return totalCents;
}

double centsIntToDollarDouble(int centsInt) {
  double dollarDouble = centsInt / 100;
  return dollarDouble;
}

bool encodeBudgetStringtoBool(String budgetString) {
  switch (budgetString) {
    case "Per Event":
      return true;
    case "Per Guest":
      return false;
    case "Per Person":
      return false;
    default:
      throw ArgumentError("Invalid budget string: $budgetString");
  }
}

String decodeUoMBoolIntoString(bool eventUoMBool) {
  String response = "Per Event";
  if (eventUoMBool == true) {
    response = "Per Event";
  } else {
    response = "Per Guest";
  }
  return response;
}

List<AcvRow>? filterACV(
  String typeKey,
  List<AcvRow> acvIn,
) {
  // Filter the list for rows where the typeKey column is not null
  List<AcvRow> filteredList =
      acvIn.where((row) => row.data[typeKey] != null).toList();

  // Return the list of matching AcvRow objects
  return filteredList;
}
