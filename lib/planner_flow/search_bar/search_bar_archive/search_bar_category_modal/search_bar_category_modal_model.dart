import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/search_bar/search_bar_category_component/search_bar_category_component_widget.dart';
import 'search_bar_category_modal_widget.dart'
    show SearchBarCategoryModalWidget;
import 'package:flutter/material.dart';

class SearchBarCategoryModalModel
    extends FlutterFlowModel<SearchBarCategoryModalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SearchBarCategoryComponent component.
  late SearchBarCategoryComponentModel searchBarCategoryComponentModel;

  @override
  void initState(BuildContext context) {
    searchBarCategoryComponentModel =
        createModel(context, () => SearchBarCategoryComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarCategoryComponentModel.dispose();
  }
}
