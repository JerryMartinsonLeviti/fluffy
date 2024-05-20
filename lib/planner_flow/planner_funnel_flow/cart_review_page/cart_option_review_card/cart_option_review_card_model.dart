import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/planner_funnel_flow/cart_review_page/cart_summary_component/cart_summary_component_widget.dart';
import 'cart_option_review_card_widget.dart' show CartOptionReviewCardWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
