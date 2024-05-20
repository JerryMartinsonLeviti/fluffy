import '/backend/supabase/supabase.dart';
import '/components/item_config_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'food_package_card_widget.dart' show FoodPackageCardWidget;
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
  // State field(s) for maxSelection widget.
  FocusNode? maxSelectionFocusNode;
  TextEditingController? maxSelectionTextController;
  String? Function(BuildContext, String?)? maxSelectionTextControllerValidator;
  Completer<List<ItemsRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    minSelectionFocusNode?.dispose();
    minSelectionTextController?.dispose();

    maxSelectionFocusNode?.dispose();
    maxSelectionTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
