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
  CartInvoiceStruct dummyInvoice = CartInvoiceStruct();

  dummyInvoice.packages = PackageSummaryStruct();  
  PackageSummaryStruct package_summary = PackageSummaryStruct();
  List<PackageLineStruct> package_lines = [];
  package_lines.add(PackageLineStruct());
  package_lines[0].packageName = "Dummy Package Line";
  package_summary.packageLines = package_lines;

  List<EventsRow> e = await EventsTable().querySingleRow(
  queryFn: (q) => q.eq('PK_Events', cart.fKEvent),
    );

  List<VenuesRow> v = await VenuesTable().querySingleRow(
    queryFn: (q) => q.eq('PK_Venues', cart.fKVenue),
  );

  int cart_guests = cart.qtyGuests;
  int cart_miles = cart.qtyMiles;
  int cart_minutes = cart.qtyMinutes;
  int event_guests = e[0].guestCount;

  List<CartFunctionSpaceRow> cfs = await CartFunctionSpaceTable().querySingleRow(
    queryFn: (q) => q.eq('FK_Cart', cart.pKCarts),
  );

  // Now get the FunctionSpacesRow from the FunctionSpaces ID's
  List<FunctionSpacesRow> fs = await FunctionSpacesTable().querySingleRow(
    queryFn: (q) => q.eq('PK_FunctionSpaces', cfs[0].fKFunctionSpace),
  );


  List<CartPackageRow> cp = await CartPackageTable().querySingleRow(
    queryFn: (q) => q.eq('FK_Cart', cart.pKCarts),
  );

// Now get the PackagesRows from the Packages ID's 
  List<PackagesRow> p = await PackagesTable().querySingleRow(
    queryFn: (q) => q.eq('PK_Packages', cp[0].fKPackage),
  );

  
  List<int> extended_price = [];
  for (int i = 0; i < p.length; i++) {
    PackageLineStruct pls = PackageLineStruct();
    pls.packageName = p[i].displayName;
    pls.pricePer = p[i].priceInCents;
    pls.qty = e[i].guestCount;
    pls.extTotal = pls.pricePer * pls.qty;
    pls.pkgType = "Food and/or Beverage";
    package_lines.add(pls);
    extended_price.add(p[i].priceInCents);
  }
  PackageSummaryStruct ps = PackageSummaryStruct();
  ps.packageLines = package_lines;
  ps.pkgSum = extended_price.reduce((a, b) => a + b);




  int total_price = extended_price.reduce((a, b) => a + b);
  List<int> rental_fee = [];
  List<int> food_and_bev_minimum = [];

  List<RentalFeeLineStruct> rfl;
  List<FnbItemLineStruct> fnbl;  


  for (int i = 0; i < fs.length; i++) {
    RentalFeeLineStruct rfls = RentalFeeLineStruct();
    rfls.functionSpaceName = fs[i].functionSpaceName;
    rfls.rentallFee = fs[i].rentalFeeInCents;
    FnbItemLineStruct fnbls = FnbItemLineStruct();
    fnbls.fsName = fs[i].functionSpaceName;
    fnbls.fsPrice = fs[i].foodAndBevMinimumInCents;
    rfl.add(rfls);
    fnbl.add(fnbls);  

  }
  RentalFeeSumStruct rfs = RentalFeeSumStruct();
  rfs.rentalFeeLines = rfl;
  rfs.rentalFeeSum = rental_fee.reduce((a, b) => a + b);
  FnbItemSumStruct fns = FnbItemSumStruct();
  fns.fnBItemLines = fnbl;
  fns.fnBItemSum = food_and_bev_minimum.reduce((a, b) => a + b);

  int total_rental_fee = rental_fee.reduce((a, b) => a + b);
  int total_food_and_bev_minimum = food_and_bev_minimum.reduce((a, b) => a + b);
  int food_and_bev_total = total_price;
  if (total_price > total_food_and_bev_minimum) {
    total_food_and_bev_minimum = 0;
  }
  
  bool food_and_bev_minimum_waived = total_price > total_food_and_bev_minimum;
  int subtotal = total_price + total_rental_fee + total_food_and_bev_minimum;
  double tax_rate = v[0].taxRate;
  int tax = (subtotal * tax_rate).round();
  double gratuity_rate = v[0].gratuityRate;
  int gratuity = (subtotal * gratuity_rate).round();
  double platform_fee_rate = 0.10;
  int platform_fee = (subtotal * platform_fee_rate).round();
  double payment_fee_rate = 0.035;
  int payment_fee_flat = 30;

  int payment_fee = (subtotal * payment_fee_rate).round() + payment_fee_flat;
  int total = subtotal + tax + gratuity + platform_fee + payment_fee;
  int half_payment = total ~/ 2;
  
  int price_per_guest = p[0].priceInCents;

  dummyInvoice.packages = package_summary;
  // fill up the dummy invoice with some dummy data

  return dummyInvoice;
}
