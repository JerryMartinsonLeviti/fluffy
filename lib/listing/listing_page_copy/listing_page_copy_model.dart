import '/backend/supabase/supabase.dart';
import '/components/bottom_ribbon_footer_widget.dart';
import '/components/event_space_component/event_space_component_widget.dart';
import '/components/packages_component/packages_component_widget.dart';
import '/components/product_detail_page_options_language/product_detail_page_options_language_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/listing/listing_f_a_qs/listing_f_a_qs_widget.dart';
import '/listing/listing_restaurant_detail_component/listing_restaurant_detail_component_widget.dart';
import '/listing/listing_terms/listing_terms_widget.dart';
import '/listing/listing_what_is_included/listing_what_is_included_widget.dart';
import '/planner_flow/event_price_card/price_predictor/price_predictor_widget.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
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
  // Model for ListingRestaurantDetailComponent component.
  late ListingRestaurantDetailComponentModel
      listingRestaurantDetailComponentModel;
  // Model for PricePredictor component.
  late PricePredictorModel pricePredictorModel;
  // Model for ProductDetailPageOptionsLanguage component.
  late ProductDetailPageOptionsLanguageModel
      productDetailPageOptionsLanguageModel;
  // Model for ListingWhatIsIncluded component.
  late ListingWhatIsIncludedModel listingWhatIsIncludedModel;
  // Model for ListingFAQs component.
  late ListingFAQsModel listingFAQsModel;
  // Model for ListingTerms component.
  late ListingTermsModel listingTermsModel;
  // Model for BottomRibbon_Footer component.
  late BottomRibbonFooterModel bottomRibbonFooterModel;
  // Model for EventSpaceComponent component.
  late EventSpaceComponentModel eventSpaceComponentModel;
  Completer<List<FunctionSpacesRow>>? requestCompleter1;
  // Model for PackagesComponent component.
  late PackagesComponentModel packagesComponentModel;
  Completer<List<PackagesRow>>? requestCompleter2;

  @override
  void initState(BuildContext context) {
    plannerAppBarComponentModel =
        createModel(context, () => PlannerAppBarComponentModel());
    listingRestaurantDetailComponentModel =
        createModel(context, () => ListingRestaurantDetailComponentModel());
    pricePredictorModel = createModel(context, () => PricePredictorModel());
    productDetailPageOptionsLanguageModel =
        createModel(context, () => ProductDetailPageOptionsLanguageModel());
    listingWhatIsIncludedModel =
        createModel(context, () => ListingWhatIsIncludedModel());
    listingFAQsModel = createModel(context, () => ListingFAQsModel());
    listingTermsModel = createModel(context, () => ListingTermsModel());
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
    listingRestaurantDetailComponentModel.dispose();
    pricePredictorModel.dispose();
    productDetailPageOptionsLanguageModel.dispose();
    listingWhatIsIncludedModel.dispose();
    listingFAQsModel.dispose();
    listingTermsModel.dispose();
    bottomRibbonFooterModel.dispose();
    eventSpaceComponentModel.dispose();
    packagesComponentModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
