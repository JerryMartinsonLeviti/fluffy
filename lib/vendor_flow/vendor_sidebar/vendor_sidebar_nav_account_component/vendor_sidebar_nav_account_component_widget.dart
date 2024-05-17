import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vendor_sidebar_nav_account_component_model.dart';
export 'vendor_sidebar_nav_account_component_model.dart';

class VendorSidebarNavAccountComponentWidget extends StatefulWidget {
  const VendorSidebarNavAccountComponentWidget({super.key});

  @override
  State<VendorSidebarNavAccountComponentWidget> createState() =>
      _VendorSidebarNavAccountComponentWidgetState();
}

class _VendorSidebarNavAccountComponentWidgetState
    extends State<VendorSidebarNavAccountComponentWidget> {
  late VendorSidebarNavAccountComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => VendorSidebarNavAccountComponentModel());

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
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.settings_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 30.0,
          ),
          Text(
            'Account',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                ),
          ),
        ],
      ),
    );
  }
}
