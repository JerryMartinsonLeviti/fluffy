import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/planner_funnel_flow/cart_review_page/cart_summary_component/cart_summary_component_widget.dart';
import 'cart_option_review_card_widget.dart' show CartOptionReviewCardWidget;
import 'package:flutter/material.dart';

class CartOptionReviewCardModel
    extends FlutterFlowModel<CartOptionReviewCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for CartSummaryComponent component.
  late CartSummaryComponentModel cartSummaryComponentModel;

  @override
  void initState(BuildContext context) {
    cartSummaryComponentModel =
        createModel(context, () => CartSummaryComponentModel());
  }

  @override
  void dispose() {
    cartSummaryComponentModel.dispose();
  }
}
