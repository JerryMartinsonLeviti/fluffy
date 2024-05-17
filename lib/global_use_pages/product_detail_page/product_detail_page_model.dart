import '/components/product_detail_page_options_language/product_detail_page_options_language_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import 'product_detail_page_widget.dart' show ProductDetailPageWidget;
import 'package:flutter/material.dart';

class ProductDetailPageModel extends FlutterFlowModel<ProductDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PlannerAppBarComponent component.
  late PlannerAppBarComponentModel plannerAppBarComponentModel;
  // Model for ProductDetailPageOptionsLanguage component.
  late ProductDetailPageOptionsLanguageModel
      productDetailPageOptionsLanguageModel;

  @override
  void initState(BuildContext context) {
    plannerAppBarComponentModel =
        createModel(context, () => PlannerAppBarComponentModel());
    productDetailPageOptionsLanguageModel =
        createModel(context, () => ProductDetailPageOptionsLanguageModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    plannerAppBarComponentModel.dispose();
    productDetailPageOptionsLanguageModel.dispose();
  }
}
