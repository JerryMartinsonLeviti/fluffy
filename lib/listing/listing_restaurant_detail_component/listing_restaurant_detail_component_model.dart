import '/backend/supabase/supabase.dart';
import '/components/address/address_widget.dart';
import '/components/text_box_update_modal_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'listing_restaurant_detail_component_widget.dart'
    show ListingRestaurantDetailComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListingRestaurantDetailComponentModel
    extends FlutterFlowModel<ListingRestaurantDetailComponentWidget> {
  ///  Local state fields for this component.

  bool editVendorMode = false;

  bool editVenueNameMode = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Insert Row] action in Icon widget.
  VendorsRow? newVendor;
  // State field(s) for VendorNameTF widget.
  FocusNode? vendorNameTFFocusNode;
  TextEditingController? vendorNameTFTextController;
  String? Function(BuildContext, String?)? vendorNameTFTextControllerValidator;
  // State field(s) for DropDown widget.
  int? dropDownValue1;
  FormFieldController<int>? dropDownValueController1;
  // Stores action output result for [Backend Call - Insert Row] action in Icon widget.
  VenuesRow? newVenue;
  // State field(s) for VenueNameTF widget.
  FocusNode? venueNameTFFocusNode;
  TextEditingController? venueNameTFTextController;
  String? Function(BuildContext, String?)? venueNameTFTextControllerValidator;
  // State field(s) for DropDown widget.
  int? dropDownValue2;
  FormFieldController<int>? dropDownValueController2;
  // Model for Address component.
  late AddressModel addressModel;
  Completer<List<AddressesRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    addressModel = createModel(context, () => AddressModel());
  }

  @override
  void dispose() {
    vendorNameTFFocusNode?.dispose();
    vendorNameTFTextController?.dispose();

    venueNameTFFocusNode?.dispose();
    venueNameTFTextController?.dispose();

    addressModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
