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

// I will be using Supabase.
// Example private keys are PK_Events and PK_Carts. 
//   The getters are pKEvents and pKCarts.
//   to fetch a row from the table, use getEvent(pkEvents) or getCart(pkCarts)
//   I also use FK_Event (singluar) and FK_Cart (singular) to get the foreign key value

Future<CartInvoiceStruct> invoiceFromCart(CartsRow cart) async {
  // Add your function code here!

  // just create dummy return for now
  CartInvoiceStruct dummyInvoice = CartInvoiceStruct();

  // Carts Row has the PK_Event ID, so we can get the Event Row
  EventsRow event = await getEvent(cart.fKEvent);

  // Below is how you can get the VendorsRow from the Vendor ID
  // FutureBuilder<List<VendorsRow>>(
  //                           future: VendorsTable().querySingleRow(
  //                             queryFn: (q) => q.eq(
  //                               'PK_Vendors',
  //                               widget.vendorPK,
  //                             ),
  // Now learn how to get the VenueRow from the Venue ID without widget
  //   Hint: Use the cart.venuePK
  //   Hint: Use the VendorsTable().querySingleRow() method


  List<EventsRow> e = await EventsTable().querySingleRow(
    queryFn: (q) => q.eq('PK_Events', cart.fKEvent),
  );

  // is there a way to get a singular query without a list?
  // I will try to get the VenueRow from the Venue ID
  // List<VenuesRow> v = await VenuesTable().querySingleRow(
  //   queryFn: (q) => q.eq('PK_Venues', cart.fKVenue),

  // Why does querySingleRow return a list?
  // answer is that it is a list of rows, even if there is only one row
  // so is there a queryRows that returns lists of rows?
  // yes, queryRows returns a list of rows


  // Now I can get the VenueRow from the Venue ID
  List<VenuesRow> v = await VenuesTable().querySingleRow(
    queryFn: (q) => q.eq('PK_Venues', cart.fKVenue),
  );

  // Now I can get the VendorRow from the Vendor ID
  List<VendorsRow> vendor = await VendorsTable().querySingleRow(
    queryFn: (q) => q.eq('PK_Vendors', v[0].fKVendor),
  );

  // Now lets get the number of guests for the event
  int cart_guests = cart.qtyGuests;
  // Now lets get the number of miles for the event
  int cart_miles = cart.qtyMiles;
  // Now lets get the number of minutes for the event
  int cart_minutes = cart.qtyMinutes;

  // lets get the desired number of guests from event
  int event_guests = e[0].guestCount;

  // associated with each Cart is a FunctionSpaces. 
  //  THere is a join table called CartFunctionSpace
  //  The CartFunctionSpace table has the FK_Cart and the FK_FunctionSpace
  // So lets get the CartFunctionSpaceRow
  List<CartFunctionSpaceRow> cfs = await CartFunctionSpaceTable().querySingleRow(
    queryFn: (q) => q.eq('FK_Cart', cart.pKCarts),
  );

  // Now get the FunctionSpacesRow from the FunctionSpaces ID's
  List<FunctionSpacesRow> fs = await FunctionSpacesTable().querySingleRow(
    queryFn: (q) => q.eq('PK_FunctionSpaces', cfs[0].fKFunctionSpace),
  );

  // There's another join table called CartPackage
  //  The CartPackage table has the FK_Cart and the FK_Package
  // So lets get the CartPackageRow
  List<CartPackageRow> cp = await CartPackageTable().querySingleRow(
    queryFn: (q) => q.eq('FK_Cart', cart.pKCarts),
  );

  // Now get the PackagesRows from the Packages ID's 
  List<PackagesRow> p = await PackagesTable().querySingleRow(
    queryFn: (q) => q.eq('PK_Packages', cp[0].fKPackage),
  );

  // and each PackageRow has a price_in_cents per guest, 
  // and we can use the number of event_guests
  // multiplying this price_in_cents by the number of guests gives us the
  // extended price for each instance of the package
  // and we can sum these to get the total price for the package
  // and we can sum these to get the total price for the cart

  // now lets get the list of each extended price
  List<int> extended_price = [];
  for (int i = 0; i < cart_guests; i++) {
    extended_price.add(p[0].priceInCents);
  }

  // now lets get the total price for the cart
  int total_price = extended_price.reduce((a, b) => a + b);



  // Lets move on the the funciton space prices.  These are rental_fee
  //  and food_and_bev_minimum_in_cents

  // it's unlikely but more than one funciton space could be booked per event.  So lets do a list
  List<int> rental_fee = [];
  List<int> food_and_bev_minimum = [];
  for (int i = 0; i < cart_guests; i++) {
    rental_fee.add(fs[0].rentalFeeInCents!);
    food_and_bev_minimum.add(fs[0].foodAndBevMinimumInCents);
  }

  // now lets get the total rental fee for the cart
  int total_rental_fee = rental_fee.reduce((a, b) => a + b);
  // and hte total food and beverage minimum for the cart
  int total_food_and_bev_minimum = food_and_bev_minimum.reduce((a, b) => a + b);


  // now we have teh F&B minumum and hte F&B package total.  Let's see if the F&B package total
  //  is greater than the F&B minimum.  If it is, then the F&B minimum is waived
  int food_and_bev_total = total_price;
  if (total_price > total_food_and_bev_minimum) {
    total_food_and_bev_minimum = 0;
  }
  // and lets make a nice bool out of the comparison
  bool food_and_bev_minimum_waived = total_price > total_food_and_bev_minimum;

  // now lets get the subtotal for the cart

  int subtotal = total_price + total_rental_fee + total_food_and_bev_minimum;

  // now there's tax, service/gratuity, our platform fee, and the sales tax

  // lets get the tax rate from the venue
  double tax_rate = v[0].taxRate;

  // now lets get the tax amount
  int tax = (subtotal * tax_rate).round();

  // now lets get the service/gratuity amount and the % should be from the venue
  double gratuity_rate = v[0].gratuityRate;

  // now lets get the gratuity amount

  int gratuity = (subtotal * gratuity_rate).round();

  // now lets get the platform fee rate and its a constant 10%
  double platform_fee_rate = 0.10;

  // now lets get the platform fee amount

  int platform_fee = (subtotal * platform_fee_rate).round();

  // now the payment fee rate is 3.5% + 30 cents
  double payment_fee_rate = 0.035;
  int payment_fee_flat = 30;

  // now lets get the payment fee amount
  int payment_fee = (subtotal * payment_fee_rate).round() + payment_fee_flat;

  // now lets get the total for the cart

  int total = subtotal + tax + gratuity + platform_fee + payment_fee;

  // now we need to figure out hte 1/2 down payment
  int half_payment = total ~/ 2;
  

  // Packages are price_in_cents per guest
  //  so lets get the price per guest
  int price_per_guest = p[0].priceInCents;
  // and we have teh number of guests 


  // Can you show me the SQL query that is generated?
  // SELECT * FROM CartFunctionSpace WHERE FK_Cart = cart.pKCarts







  return dummyInvoice;
}
