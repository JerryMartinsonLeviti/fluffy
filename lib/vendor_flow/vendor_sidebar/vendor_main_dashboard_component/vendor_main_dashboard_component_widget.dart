import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vendor_main_dashboard_component_model.dart';
export 'vendor_main_dashboard_component_model.dart';

class VendorMainDashboardComponentWidget extends StatefulWidget {
  const VendorMainDashboardComponentWidget({super.key});

  @override
  State<VendorMainDashboardComponentWidget> createState() =>
      _VendorMainDashboardComponentWidgetState();
}

class _VendorMainDashboardComponentWidgetState
    extends State<VendorMainDashboardComponentWidget> {
  late VendorMainDashboardComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendorMainDashboardComponentModel());

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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: Icon(
              Icons.dashboard_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 56.0,
            ),
          ),
          Text(
            'Main Dashboard',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(SizedBox(width: 10.0)),
      ),
    );
  }
}
