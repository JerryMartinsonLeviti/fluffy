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
  dollarStringWithDecimal = dollarStringWithDecimal.replaceAll('\$', '');
  dollarStringWithDecimal = dollarStringWithDecimal.replaceAll('\,', '');
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

List<VacvRow>? filterVacv(
  List<VacvRow> vacvIn,
  String typeKey,
) {
  // Filter the list for rows where the typeKey column is not null
  List<VacvRow> filteredList =
      vacvIn.where((row) => row.data[typeKey] != null).toList();

  // Return the list of matching AcvRow objects
  return filteredList;
}

DateTime? pdtTimeStringToUTCz(String? clockTimeWithAMPM) {
  if (clockTimeWithAMPM == null) return null;

  // Regular expression to match the input time format
  final regex = RegExp(r'(\d{1,2}):(\d{2})\s*([AP]M)', caseSensitive: false);
  final match = regex.firstMatch(clockTimeWithAMPM);

  if (match == null) {
    // If the input doesn't match the expected format, return null
    return null;
  }

  // Extract the hour, minute, and period (AM/PM)
  final hour = int.parse(match.group(1)!);
  final minute = int.parse(match.group(2)!);
  final period = match.group(3)!.toUpperCase();

  // Convert to 24-hour format
  final parsedHour = (period == 'PM' && hour != 12)
      ? hour + 12
      : (period == 'AM' && hour == 12)
          ? 0
          : hour;

  // Get the current date
  final now = DateTime.now();

  // Create a DateTime object with the parsed time and current date
  final localDateTime =
      DateTime(now.year, now.month, now.day, parsedHour, minute);

  // PDT offset from UTC
  final pdtOffset = Duration(hours: -7);

  // Adjust the local DateTime to UTC by subtracting the PDT offset
  final utcDateTime = localDateTime.subtract(pdtOffset);

  return utcDateTime;
}

String uTCzToPDTString(DateTime? uTCzIn) {
  if (uTCzIn == null) return '';

  // PDT offset from UTC is -7 hours
  final pdtOffset = Duration(hours: -7);

  // Convert the UTC DateTime to PDT by subtracting the PDT offset
  final pdtDateTime = uTCzIn.add(pdtOffset);

  // Format the PDT DateTime as a string in your desired format
  final formattedString =
      DateFormat('yyyy-MM-dd hh:mm:ss a').format(pdtDateTime);

  return formattedString;
}
