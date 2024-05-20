import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'cart_summary_component_widget.dart' show CartSummaryComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartSummaryComponentModel
    extends FlutterFlowModel<CartSummaryComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<PlannersRow>? plannerRows1;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UserInfosRow>? userInfoRows1;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<PlannersRow>? plannerRows;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UserInfosRow>? userInfoRows;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
