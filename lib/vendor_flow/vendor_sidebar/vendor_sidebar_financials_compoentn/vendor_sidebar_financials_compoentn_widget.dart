import '/components/icon_financials/icon_financials_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vendor_sidebar_financials_compoentn_model.dart';
export 'vendor_sidebar_financials_compoentn_model.dart';

class VendorSidebarFinancialsCompoentnWidget extends StatefulWidget {
  const VendorSidebarFinancialsCompoentnWidget({super.key});

  @override
  State<VendorSidebarFinancialsCompoentnWidget> createState() =>
      _VendorSidebarFinancialsCompoentnWidgetState();
}

class _VendorSidebarFinancialsCompoentnWidgetState
    extends State<VendorSidebarFinancialsCompoentnWidget> {
  late VendorSidebarFinancialsCompoentnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => VendorSidebarFinancialsCompoentnModel());

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
            model: _model.iconFinancialsModel,
            updateCallback: () => setState(() {}),
            child: IconFinancialsWidget(),
          ),
          Text(
            'Financials',
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
