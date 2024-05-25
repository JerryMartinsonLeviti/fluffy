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

Future<CartInvoiceStruct> invoiceFromCart(CartsRow cart) async {
  // Add your function code here!

  // just create dummy return
  CartInvoiceStruct dummyInvoice = CartInvoiceStruct();

  // now lets' create a dummy invoice by filing up the dummyInvoice object fields defined in the project
  dummyInvoice.packages = PackageSummaryStruct();  // now look at the struct definition in the project for PackageSummaryStruct

  PackageSummaryStruct package_summary = PackageSummaryStruct();
  List<PackageLineStruct> package_lines = [];
  package_lines.add(PackageLineStruct());
  package_lines[0].packageName = "Dummy Package Line";
  package_summary.packageLines = package_lines;

  // FnbItemLineStruct fnb_item_line = FnbItemLineStruct();
  // fnb_item_line.itemName = "Dummy Fnb Item";
  // FoodAndBevSummaryStruct fnb_summary = FoodAndBevSummaryStruct();
  // fnb_summary.fnbItemLines = [fnb_item_line];
  // dummyInvoice.fnbMinimums = fnb_summary;




  // package_summary.packageName = "Dummy Package";
  dummyInvoice.packages = package_summary;
  // fill up the dummy invoice with some dummy data

  return dummyInvoice;
}
