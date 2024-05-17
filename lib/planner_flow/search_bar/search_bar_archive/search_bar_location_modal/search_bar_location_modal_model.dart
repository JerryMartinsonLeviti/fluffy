import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/search_bar/search_bar_location_component/search_bar_location_component_widget.dart';
import 'search_bar_location_modal_widget.dart'
    show SearchBarLocationModalWidget;
import 'package:flutter/material.dart';

class SearchBarLocationModalModel
    extends FlutterFlowModel<SearchBarLocationModalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SearchBarLocationComponent component.
  late SearchBarLocationComponentModel searchBarLocationComponentModel;

  @override
  void initState(BuildContext context) {
    searchBarLocationComponentModel =
        createModel(context, () => SearchBarLocationComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarLocationComponentModel.dispose();
  }
}
