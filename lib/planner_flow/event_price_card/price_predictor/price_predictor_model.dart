import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'price_predictor_widget.dart' show PricePredictorWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PricePredictorModel extends FlutterFlowModel<PricePredictorWidget> {
  ///  Local state fields for this component.

  bool showEstimateDetails = true;

  bool showTotalEventCost = true;

  bool noUpdateBudget = true;

  bool expanded = true;

  List<int> fsRentalFees = [];
  void addToFsRentalFees(int item) => fsRentalFees.add(item);
  void removeFromFsRentalFees(int item) => fsRentalFees.remove(item);
  void removeAtIndexFromFsRentalFees(int index) => fsRentalFees.removeAt(index);
  void insertAtIndexInFsRentalFees(int index, int item) =>
      fsRentalFees.insert(index, item);
  void updateFsRentalFeesAtIndex(int index, Function(int) updateFn) =>
      fsRentalFees[index] = updateFn(fsRentalFees[index]);

  List<int> fsFnBMins = [];
  void addToFsFnBMins(int item) => fsFnBMins.add(item);
  void removeFromFsFnBMins(int item) => fsFnBMins.remove(item);
  void removeAtIndexFromFsFnBMins(int index) => fsFnBMins.removeAt(index);
  void insertAtIndexInFsFnBMins(int index, int item) =>
      fsFnBMins.insert(index, item);
  void updateFsFnBMinsAtIndex(int index, Function(int) updateFn) =>
      fsFnBMins[index] = updateFn(fsFnBMins[index]);

  List<int> foodPkgPricePer = [];
  void addToFoodPkgPricePer(int item) => foodPkgPricePer.add(item);
  void removeFromFoodPkgPricePer(int item) => foodPkgPricePer.remove(item);
  void removeAtIndexFromFoodPkgPricePer(int index) =>
      foodPkgPricePer.removeAt(index);
  void insertAtIndexInFoodPkgPricePer(int index, int item) =>
      foodPkgPricePer.insert(index, item);
  void updateFoodPkgPricePerAtIndex(int index, Function(int) updateFn) =>
      foodPkgPricePer[index] = updateFn(foodPkgPricePer[index]);

  List<int> foodPkgExtended = [];
  void addToFoodPkgExtended(int item) => foodPkgExtended.add(item);
  void removeFromFoodPkgExtended(int item) => foodPkgExtended.remove(item);
  void removeAtIndexFromFoodPkgExtended(int index) =>
      foodPkgExtended.removeAt(index);
  void insertAtIndexInFoodPkgExtended(int index, int item) =>
      foodPkgExtended.insert(index, item);
  void updateFoodPkgExtendedAtIndex(int index, Function(int) updateFn) =>
      foodPkgExtended[index] = updateFn(foodPkgExtended[index]);

  int? fsTotRental;

  int? fstotFnB;

  int? foodPkgTotal;

  int? platformFee;

  int? tax;

  int? serviceCharge;

  int? totalEstimate;

  int? totalDueToday;

  CartInvoiceStruct? cartInvoice;
  void updateCartInvoiceStruct(Function(CartInvoiceStruct) updateFn) =>
      updateFn(cartInvoice ??= CartInvoiceStruct());

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - invoiceFromCart] action in PricePredictor widget.
  CartInvoiceStruct? cartInvoiceOut;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue1;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
