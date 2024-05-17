import '/components/icon_manage_events/icon_manage_events_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vendor_sidebar_manage_event_component_model.dart';
export 'vendor_sidebar_manage_event_component_model.dart';

class VendorSidebarManageEventComponentWidget extends StatefulWidget {
  const VendorSidebarManageEventComponentWidget({super.key});

  @override
  State<VendorSidebarManageEventComponentWidget> createState() =>
      _VendorSidebarManageEventComponentWidgetState();
}

class _VendorSidebarManageEventComponentWidgetState
    extends State<VendorSidebarManageEventComponentWidget> {
  late VendorSidebarManageEventComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => VendorSidebarManageEventComponentModel());

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
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          wrapWithModel(
            model: _model.iconManageEventsModel,
            updateCallback: () => setState(() {}),
            child: IconManageEventsWidget(),
          ),
          Text(
            'Manage Events',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(SizedBox(width: 10.0)),
      ),
    );
  }
}
