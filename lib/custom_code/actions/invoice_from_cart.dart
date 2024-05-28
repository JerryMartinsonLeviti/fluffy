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

import 'index.dart'; // Imports other custom actions

import 'index.dart'; // Imports other custom actions

Future<CartInvoiceStruct> invoiceFromCart(CartsRow cart) async {
  // Add your function code here!

  // I'd like to do consts and finals where possible

  final List<PackageLineStruct> packageLines = [];

  final List<EventsRow> e = await EventsTable().querySingleRow(
    queryFn: (q) => q.eq('PK_Events', cart.fKEvent),
  );

  final List<VenuesRow> v = await VenuesTable().querySingleRow(
    queryFn: (q) => q.eq('PK_Venues', cart.fKVenue),
  );

  final List<CartFunctionSpaceRow> cfs =
      await CartFunctionSpaceTable().querySingleRow(
    queryFn: (q) => q.eq('FK_Cart', cart.pKCarts),
  );

  final List<FunctionSpacesRow> fs;
  if (cfs.isEmpty) {
    fs = [];
    print("No function spaces found");
  } else {
    fs = await FunctionSpacesTable().querySingleRow(
      queryFn: (q) => q.eq('PK_FunctionSpaces', cfs[0].fKFunctionSpace),
    );
  }

  final List<CartPackageRow> cp = await CartPackageTable().querySingleRow(
    queryFn: (q) => q.eq('FK_Cart', cart.pKCarts),
  );

  final List<PackagesRow> p;
  if (cp.isEmpty) {
    p = [];
    print("No packages found");
  } else {
    p = await PackagesTable().querySingleRow(
      queryFn: (q) => q.eq('PK_Packages', cp[0].fKPackage),
    );
  }

  final List<int> extendedPrice = [];
  for (int i = 0; i < p.length; i++) {
    PackageLineStruct pls = PackageLineStruct();
    pls.packageName = p[i].displayName;
    pls.pricePer = p[i].priceInCents;
    pls.qty = e[i].guestCount;
    pls.extTotal = pls.pricePer * pls.qty;
    pls.pkgType = "Food and/or Beverage";
    packageLines.add(pls);
    extendedPrice.add(pls.extTotal);
  }
  final PackageSummaryStruct ps = PackageSummaryStruct();
  ps.packageLines = packageLines;
  ps.pkgSum = extendedPrice.fold<int>(0, (int a, int b) => a + b);

  double taxRate = v[0].taxRate;
  double gratuityRate = v[0].gratuityRate;
  double platformFeeRate = 0.10;
  double paymentFeeRate = 0.035;

  final List<RentalFeeLineStruct> rfl = [];
  final List<FnbItemLineStruct> fnbl = [];

  for (int i = 0; i < fs.length; i++) {
    RentalFeeLineStruct rfls = RentalFeeLineStruct();
    rfls.functionSpaceName = fs[i].functionSpaceName;
    rfls.rentalFee = fs[i].rentalFeeInCents;
    FnbItemLineStruct fnbls = FnbItemLineStruct();
    fnbls.fsName = fs[i].functionSpaceName;
    fnbls.fsPrice = fs[i].foodAndBevMinimumInCents;
    rfl.add(rfls);
    fnbl.add(fnbls);
  }
  final RentalFeeSumStruct rfs = RentalFeeSumStruct();
  rfs.rentalFeeLines = rfl;
  rfs.rentalFeeTotal = rfl.isEmpty
      ? 0
      : rfl.map((rfls) => rfls.rentalFee).reduce((a, b) => a + b);

  final FoodAndBevSummaryStruct fns = FoodAndBevSummaryStruct();
  fns.fnbLines = fnbl;
  fns.fnbSum = fnbl.isEmpty
      ? 0
      : fnbl.map((fnbls) => fnbls.fsPrice).reduce((a, b) => a + b);

  fns.fnbIsMet = ps.pkgSum > fns.fnbSum;
  fns.netFnbAmount = fns.fnbIsMet ? 0 : fns.fnbSum - ps.pkgSum;

  final int subtotal = fns.netFnbAmount + rfs.rentalFeeTotal + ps.pkgSum;

  // Now do taxes and fees
  final TaxesAndFeesSummaryStruct tfs = TaxesAndFeesSummaryStruct();
  tfs.taxRate = taxRate;
  tfs.taxAmount = (subtotal * taxRate).toInt();
  tfs.gratuityRate = gratuityRate;
  tfs.gratuityAmount = (subtotal * gratuityRate).toInt();
  tfs.platformFeeTake = platformFeeRate;
  tfs.platformFeeAmount = (subtotal * platformFeeRate).toInt();
  tfs.processingFee = paymentFeeRate;
  tfs.processingAmount =
      (subtotal * paymentFeeRate).toInt(); // + payment_fee_flat;

  CartInvoiceStruct cartInvoice = CartInvoiceStruct();
  cartInvoice.packages = ps;
  cartInvoice.rentalFees = rfs;
  cartInvoice.fnbMinimums = fns;
  cartInvoice.subtotal = subtotal;
  cartInvoice.taxesAndFees = tfs;
  cartInvoice.total = subtotal +
      tfs.taxAmount +
      tfs.gratuityAmount +
      tfs.platformFeeAmount +
      tfs.processingAmount;
  cartInvoice.dueToday = cartInvoice.total ~/ 2;
  print(cartInvoice.toMap());
  print("Cart Invoice: $cartInvoice");
  return cartInvoice;
}
