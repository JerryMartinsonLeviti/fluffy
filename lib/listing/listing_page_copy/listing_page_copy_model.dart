import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/bottom_ribbon_footer_widget.dart';
import '/components/event_space_component/event_space_component_widget.dart';
import '/components/image_gallery_manager_component_widget.dart';
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
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'listing_page_copy_widget.dart' show ListingPageCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListingPageCopyModel extends FlutterFlowModel<ListingPageCopyWidget> {
  ///  Local state fields for this page.

  bool galleryVenueEditorDisabled = true;

  bool galleryVendorEditorDisabled = true;

  CartsRow? pageCart;

  EventsRow? pageEvent;

  CartInvoiceStruct? cartInvoice;
  void updateCartInvoiceStruct(Function(CartInvoiceStruct) updateFn) =>
      updateFn(cartInvoice ??= CartInvoiceStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in ListingPageCopy widget.
  List<EventsRow>? event;
  // Stores action output result for [Backend Call - Query Rows] action in ListingPageCopy widget.
  List<CartsRow>? queryCart;
  // Stores action output result for [Backend Call - Insert Row] action in ListingPageCopy widget.
  CartsRow? insertCart;
  // Stores action output result for [Custom Action - invoiceFromCart] action in ListingPageCopy widget.
  CartInvoiceStruct? cartInvoiceActionOutput;
  // Model for PlannerAppBarComponent component.
  late PlannerAppBarComponentModel plannerAppBarComponentModel;
  // Model for ListingRestaurantDetailComponent component.
  late ListingRestaurantDetailComponentModel
      listingRestaurantDetailComponentModel;
  Completer<List<VendorsRow>>? requestCompleter2;
  Completer<List<VenuesRow>>? requestCompleter4;
  // Model for PricePredictor component.
  late PricePredictorModel pricePredictorModel;
  // Stores action output result for [Backend Call - Query Rows] action in PricePredictor widget.
  List<EventsRow>? eventUpdated;
  // Model for imageGalleryManagerComponent component.
  late ImageGalleryManagerComponentModel imageGalleryManagerComponentModel1;
  Completer<List<ImageAssetsRow>>? requestCompleter7;
  // Stores action output result for [Custom Action - invoiceFromCart] action in imageGalleryManagerComponent widget.
  CartInvoiceStruct? cartInvoiceActionOutput2;
  Completer<List<ImageAssetsRow>>? requestCompleter3;
  // Model for imageGalleryManagerComponent component.
  late ImageGalleryManagerComponentModel imageGalleryManagerComponentModel2;
  Completer<List<ImageAssetsRow>>? requestCompleter1;
  // Model for ProductDetailPageOptionsLanguage component.
  late ProductDetailPageOptionsLanguageModel
      productDetailPageOptionsLanguageModel;
  Completer<List<FunctionSpacesRow>>? requestCompleter5;
  // Model for EventSpaceComponent component.
  late EventSpaceComponentModel eventSpaceComponentModel;
  // Stores action output result for [Backend Call - Query Rows] action in EventSpaceComponent widget.
  List<CartsRow>? cartrf;
  // Stores action output result for [Custom Action - invoiceFromCart] action in EventSpaceComponent widget.
  CartInvoiceStruct? ao3Ci;
  Completer<List<PackagesRow>>? requestCompleter6;
  // Model for PackagesComponent component.
  late PackagesComponentModel packagesComponentModel;
  // Stores action output result for [Backend Call - Query Rows] action in PackagesComponent widget.
  List<CartsRow>? carta;
  // Stores action output result for [Custom Action - invoiceFromCart] action in PackagesComponent widget.
  CartInvoiceStruct? ao4;
  // Model for ListingWhatIsIncluded component.
  late ListingWhatIsIncludedModel listingWhatIsIncludedModel;
  // Model for ListingFAQs component.
  late ListingFAQsModel listingFAQsModel;
  // Model for ListingTerms component.
  late ListingTermsModel listingTermsModel;
  // Model for BottomRibbon_Footer component.
  late BottomRibbonFooterModel bottomRibbonFooterModel;

  @override
  void initState(BuildContext context) {
    plannerAppBarComponentModel =
        createModel(context, () => PlannerAppBarComponentModel());
    listingRestaurantDetailComponentModel =
        createModel(context, () => ListingRestaurantDetailComponentModel());
    pricePredictorModel = createModel(context, () => PricePredictorModel());
    imageGalleryManagerComponentModel1 =
        createModel(context, () => ImageGalleryManagerComponentModel());
    imageGalleryManagerComponentModel2 =
        createModel(context, () => ImageGalleryManagerComponentModel());
    productDetailPageOptionsLanguageModel =
        createModel(context, () => ProductDetailPageOptionsLanguageModel());
    eventSpaceComponentModel =
        createModel(context, () => EventSpaceComponentModel());
    packagesComponentModel =
        createModel(context, () => PackagesComponentModel());
    listingWhatIsIncludedModel =
        createModel(context, () => ListingWhatIsIncludedModel());
    listingFAQsModel = createModel(context, () => ListingFAQsModel());
    listingTermsModel = createModel(context, () => ListingTermsModel());
    bottomRibbonFooterModel =
        createModel(context, () => BottomRibbonFooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    plannerAppBarComponentModel.dispose();
    listingRestaurantDetailComponentModel.dispose();
    pricePredictorModel.dispose();
    imageGalleryManagerComponentModel1.dispose();
    imageGalleryManagerComponentModel2.dispose();
    productDetailPageOptionsLanguageModel.dispose();
    eventSpaceComponentModel.dispose();
    packagesComponentModel.dispose();
    listingWhatIsIncludedModel.dispose();
    listingFAQsModel.dispose();
    listingTermsModel.dispose();
    bottomRibbonFooterModel.dispose();
  }

  /// Additional helper methods.
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

  Future waitForRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter4?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted7({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter7?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

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

  Future waitForRequestCompleted5({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter5?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted6({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter6?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
