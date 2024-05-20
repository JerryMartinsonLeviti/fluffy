import '/backend/supabase/supabase.dart';
import '/components/item_config_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'food_package_card_widget.dart' show FoodPackageCardWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodPackageCardModel extends FlutterFlowModel<FoodPackageCardWidget> {
  ///  Local state fields for this component.

  bool noEdit = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for minSelection widget.
  FocusNode? minSelectionFocusNode;
  TextEditingController? minSelectionTextController;
  String? Function(BuildContext, String?)? minSelectionTextControllerValidator;
  Completer<List<PackageItemRow>>? requestCompleter2;
  // State field(s) for maxSelection widget.
  FocusNode? maxSelectionFocusNode;
  TextEditingController? maxSelectionTextController;
  String? Function(BuildContext, String?)? maxSelectionTextControllerValidator;
  // State field(s) for pricePer widget.
  FocusNode? pricePerFocusNode;
  TextEditingController? pricePerTextController;
  String? Function(BuildContext, String?)? pricePerTextControllerValidator;
  // State field(s) for nameTF widget.
  FocusNode? nameTFFocusNode;
  TextEditingController? nameTFTextController;
  String? Function(BuildContext, String?)? nameTFTextControllerValidator;
  // State field(s) for descTF widget.
  FocusNode? descTFFocusNode;
  TextEditingController? descTFTextController;
  String? Function(BuildContext, String?)? descTFTextControllerValidator;
  Completer<List<ItemsRow>>? requestCompleter1;
  Completer<List<ItemsRow>>? requestCompleter3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    minSelectionFocusNode?.dispose();
    minSelectionTextController?.dispose();

    maxSelectionFocusNode?.dispose();
    maxSelectionTextController?.dispose();

    pricePerFocusNode?.dispose();
    pricePerTextController?.dispose();

    nameTFFocusNode?.dispose();
    nameTFTextController?.dispose();

    descTFFocusNode?.dispose();
    descTFTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
