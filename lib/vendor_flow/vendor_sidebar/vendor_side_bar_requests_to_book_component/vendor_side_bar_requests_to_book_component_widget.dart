import '/components/icon_requestto_book_plane/icon_requestto_book_plane_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'vendor_side_bar_requests_to_book_component_model.dart';
export 'vendor_side_bar_requests_to_book_component_model.dart';

class VendorSideBarRequestsToBookComponentWidget extends StatefulWidget {
  const VendorSideBarRequestsToBookComponentWidget({super.key});

  @override
  State<VendorSideBarRequestsToBookComponentWidget> createState() =>
      _VendorSideBarRequestsToBookComponentWidgetState();
}

class _VendorSideBarRequestsToBookComponentWidgetState
    extends State<VendorSideBarRequestsToBookComponentWidget> {
  late VendorSideBarRequestsToBookComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => VendorSideBarRequestsToBookComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          wrapWithModel(
            model: _model.iconRequesttoBookPlaneModel,
            updateCallback: () => setState(() {}),
            child: const IconRequesttoBookPlaneWidget(),
          ),
          Text(
            'Requests to Book',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(const SizedBox(width: 18.0)),
      ),
    );
  }
}
