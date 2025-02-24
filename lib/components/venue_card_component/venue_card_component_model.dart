import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'venue_card_component_widget.dart' show VenueCardComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VenueCardComponentModel
    extends FlutterFlowModel<VenueCardComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<CartsRow>? cartrows;
  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  CartsRow? newCart;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
