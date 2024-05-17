import '/backend/supabase/supabase.dart';
import '/components/venue_card_component/venue_card_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import '/planner_flow/search_bar/search_bar/search_bar_widget.dart';
import 'step2_search_result_shopping_widget.dart'
    show Step2SearchResultShoppingWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Step2SearchResultShoppingModel
    extends FlutterFlowModel<Step2SearchResultShoppingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PlannerAppBarComponent component.
  late PlannerAppBarComponentModel plannerAppBarComponentModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    plannerAppBarComponentModel =
        createModel(context, () => PlannerAppBarComponentModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    plannerAppBarComponentModel.dispose();
    searchBarModel.dispose();
  }
}
