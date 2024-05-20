import '/backend/supabase/supabase.dart';
import '/components/address/address_widget.dart';
import '/components/bottom_ribbon_footer_widget.dart';
import '/components/event_space_component/event_space_component_widget.dart';
import '/components/packages_component/packages_component_widget.dart';
import '/components/product_detail_page_options_language/product_detail_page_options_language_widget.dart';
import '/components/text_box_update_modal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/event_price_card/price_predictor/price_predictor_widget.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'listing_page_copy_widget.dart' show ListingPageCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListingPageCopyModel extends FlutterFlowModel<ListingPageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PlannerAppBarComponent component.
  late PlannerAppBarComponentModel plannerAppBarComponentModel;
  // Model for Address component.
  late AddressModel addressModel;
  // Model for PricePredictor component.
  late PricePredictorModel pricePredictorModel;
  // Model for ProductDetailPageOptionsLanguage component.
  late ProductDetailPageOptionsLanguageModel
      productDetailPageOptionsLanguageModel;
  // Model for BottomRibbon_Footer component.
  late BottomRibbonFooterModel bottomRibbonFooterModel;
  // Model for EventSpaceComponent component.
  late EventSpaceComponentModel eventSpaceComponentModel;
  // Model for PackagesComponent component.
  late PackagesComponentModel packagesComponentModel;

  @override
  void initState(BuildContext context) {
    plannerAppBarComponentModel =
        createModel(context, () => PlannerAppBarComponentModel());
    addressModel = createModel(context, () => AddressModel());
    pricePredictorModel = createModel(context, () => PricePredictorModel());
    productDetailPageOptionsLanguageModel =
        createModel(context, () => ProductDetailPageOptionsLanguageModel());
    bottomRibbonFooterModel =
        createModel(context, () => BottomRibbonFooterModel());
    eventSpaceComponentModel =
        createModel(context, () => EventSpaceComponentModel());
    packagesComponentModel =
        createModel(context, () => PackagesComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    plannerAppBarComponentModel.dispose();
    addressModel.dispose();
    pricePredictorModel.dispose();
    productDetailPageOptionsLanguageModel.dispose();
    bottomRibbonFooterModel.dispose();
    eventSpaceComponentModel.dispose();
    packagesComponentModel.dispose();
  }
}
