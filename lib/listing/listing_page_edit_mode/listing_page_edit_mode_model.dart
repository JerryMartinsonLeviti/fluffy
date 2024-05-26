import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/bottom_ribbon_footer_widget.dart';
import '/components/product_detail_page_options_language/product_detail_page_options_language_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/event_price_card/price_predictor/price_predictor_widget.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import 'listing_page_edit_mode_widget.dart' show ListingPageEditModeWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListingPageEditModeModel
    extends FlutterFlowModel<ListingPageEditModeWidget> {
  ///  Local state fields for this page.

  CartsRow? pageCart;

  EventsRow? pageEvent;

  CartInvoiceStruct? cartInvoice;
  void updateCartInvoiceStruct(Function(CartInvoiceStruct) updateFn) =>
      updateFn(cartInvoice ??= CartInvoiceStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PlannerAppBarComponent component.
  late PlannerAppBarComponentModel plannerAppBarComponentModel;
  // Model for PricePredictor component.
  late PricePredictorModel pricePredictorModel;
  // Model for ProductDetailPageOptionsLanguage component.
  late ProductDetailPageOptionsLanguageModel
      productDetailPageOptionsLanguageModel;
  // Model for BottomRibbon_Footer component.
  late BottomRibbonFooterModel bottomRibbonFooterModel;

  @override
  void initState(BuildContext context) {
    plannerAppBarComponentModel =
        createModel(context, () => PlannerAppBarComponentModel());
    pricePredictorModel = createModel(context, () => PricePredictorModel());
    productDetailPageOptionsLanguageModel =
        createModel(context, () => ProductDetailPageOptionsLanguageModel());
    bottomRibbonFooterModel =
        createModel(context, () => BottomRibbonFooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    plannerAppBarComponentModel.dispose();
    pricePredictorModel.dispose();
    productDetailPageOptionsLanguageModel.dispose();
    bottomRibbonFooterModel.dispose();
  }
}
