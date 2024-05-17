import '/components/icon_requestto_book_plane/icon_requestto_book_plane_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vendor_side_bar_requests_to_book_component_widget.dart'
    show VendorSideBarRequestsToBookComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendorSideBarRequestsToBookComponentModel
    extends FlutterFlowModel<VendorSideBarRequestsToBookComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IconRequesttoBookPlane component.
  late IconRequesttoBookPlaneModel iconRequesttoBookPlaneModel;

  @override
  void initState(BuildContext context) {
    iconRequesttoBookPlaneModel =
        createModel(context, () => IconRequesttoBookPlaneModel());
  }

  @override
  void dispose() {
    iconRequesttoBookPlaneModel.dispose();
  }
}
