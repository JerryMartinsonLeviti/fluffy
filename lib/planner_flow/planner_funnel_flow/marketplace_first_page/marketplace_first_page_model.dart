import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import '/planner_flow/search_bar/search_bar/search_bar_widget.dart';
import 'marketplace_first_page_widget.dart' show MarketplaceFirstPageWidget;
import 'package:flutter/material.dart';

class MarketplaceFirstPageModel
    extends FlutterFlowModel<MarketplaceFirstPageWidget> {
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
