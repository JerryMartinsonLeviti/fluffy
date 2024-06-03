import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'item_grp_config_component_widget.dart'
    show ItemGrpConfigComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemGrpConfigComponentModel
    extends FlutterFlowModel<ItemGrpConfigComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ItemGrpName widget.
  FocusNode? itemGrpNameFocusNode;
  TextEditingController? itemGrpNameTextController;
  String? Function(BuildContext, String?)? itemGrpNameTextControllerValidator;
  // State field(s) for minSel widget.
  FocusNode? minSelFocusNode;
  TextEditingController? minSelTextController;
  String? Function(BuildContext, String?)? minSelTextControllerValidator;
  // State field(s) for maxSel widget.
  FocusNode? maxSelFocusNode;
  TextEditingController? maxSelTextController;
  String? Function(BuildContext, String?)? maxSelTextControllerValidator;
  // State field(s) for ItemGrpDescripton widget.
  FocusNode? itemGrpDescriptonFocusNode;
  TextEditingController? itemGrpDescriptonTextController;
  String? Function(BuildContext, String?)?
      itemGrpDescriptonTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    itemGrpNameFocusNode?.dispose();
    itemGrpNameTextController?.dispose();

    minSelFocusNode?.dispose();
    minSelTextController?.dispose();

    maxSelFocusNode?.dispose();
    maxSelTextController?.dispose();

    itemGrpDescriptonFocusNode?.dispose();
    itemGrpDescriptonTextController?.dispose();
  }
}
