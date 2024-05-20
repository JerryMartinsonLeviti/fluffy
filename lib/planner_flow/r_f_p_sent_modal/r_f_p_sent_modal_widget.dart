import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/r_f_p_sent_modalx/r_f_p_sent_modalx_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'r_f_p_sent_modal_model.dart';
export 'r_f_p_sent_modal_model.dart';

class RFPSentModalWidget extends StatefulWidget {
  const RFPSentModalWidget({super.key});

  @override
  State<RFPSentModalWidget> createState() => _RFPSentModalWidgetState();
}

class _RFPSentModalWidgetState extends State<RFPSentModalWidget> {
  late RFPSentModalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RFPSentModalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.rFPSentModalxModel,
            updateCallback: () => setState(() {}),
            child: RFPSentModalxWidget(),
          ),
        ),
      ),
    );
  }
}
