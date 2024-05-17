import '/backend/supabase/supabase.dart';
import '/components/address/address_widget.dart';
import '/components/event_space_component/event_space_component_widget.dart';
import '/components/packages_component/packages_component_widget.dart';
import '/components/product_detail_page_options_language/product_detail_page_options_language_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'venue_detail_page_widget.dart' show VenueDetailPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VenueDetailPageModel extends FlutterFlowModel<VenueDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PlannerAppBarComponent component.
  late PlannerAppBarComponentModel plannerAppBarComponentModel;
  // Model for ProductDetailPageOptionsLanguage component.
  late ProductDetailPageOptionsLanguageModel
      productDetailPageOptionsLanguageModel;
  // Model for Address component.
  late AddressModel addressModel;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Model for EventSpaceComponent component.
  late EventSpaceComponentModel eventSpaceComponentModel;
  // Model for PackagesComponent component.
  late PackagesComponentModel packagesComponentModel;

  @override
  void initState(BuildContext context) {
    plannerAppBarComponentModel =
        createModel(context, () => PlannerAppBarComponentModel());
    productDetailPageOptionsLanguageModel =
        createModel(context, () => ProductDetailPageOptionsLanguageModel());
    addressModel = createModel(context, () => AddressModel());
    eventSpaceComponentModel =
        createModel(context, () => EventSpaceComponentModel());
    packagesComponentModel =
        createModel(context, () => PackagesComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    plannerAppBarComponentModel.dispose();
    productDetailPageOptionsLanguageModel.dispose();
    addressModel.dispose();
    eventSpaceComponentModel.dispose();
    packagesComponentModel.dispose();
  }
}
