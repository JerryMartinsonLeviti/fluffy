import '/backend/supabase/supabase.dart';
import '/components/address/address_widget.dart';
import '/components/text_box_update_modal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
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

  // State field(s) for VendorNameTF widget.
  FocusNode? vendorNameTFFocusNode;
  TextEditingController? vendorNameTFTextController;
  String? Function(BuildContext, String?)? vendorNameTFTextControllerValidator;
  // State field(s) for VenueNameTF widget.
  FocusNode? venueNameTFFocusNode;
  TextEditingController? venueNameTFTextController;
  String? Function(BuildContext, String?)? venueNameTFTextControllerValidator;
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
