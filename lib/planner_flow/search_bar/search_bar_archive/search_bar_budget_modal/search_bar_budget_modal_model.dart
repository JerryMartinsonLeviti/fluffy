import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/search_bar/search_bar_budget_component/search_bar_budget_component_widget.dart';
import 'search_bar_budget_modal_widget.dart' show SearchBarBudgetModalWidget;
import 'package:flutter/material.dart';

class SearchBarBudgetModalModel
    extends FlutterFlowModel<SearchBarBudgetModalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SearchBarBudgetComponent component.
  late SearchBarBudgetComponentModel searchBarBudgetComponentModel;

  @override
  void initState(BuildContext context) {
    searchBarBudgetComponentModel =
        createModel(context, () => SearchBarBudgetComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarBudgetComponentModel.dispose();
  }
}
