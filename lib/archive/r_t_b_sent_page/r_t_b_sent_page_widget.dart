import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/r_t_b_sent_modal/r_t_b_sent_modal_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'r_t_b_sent_page_model.dart';
export 'r_t_b_sent_page_model.dart';

class RTBSentPageWidget extends StatefulWidget {
  const RTBSentPageWidget({super.key});

  @override
  State<RTBSentPageWidget> createState() => _RTBSentPageWidgetState();
}

class _RTBSentPageWidgetState extends State<RTBSentPageWidget> {
  late RTBSentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RTBSentPageModel());

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
            model: _model.rTBSentModalModel,
            updateCallback: () => setState(() {}),
            child: RTBSentModalWidget(),
          ),
        ),
      ),
    );
  }
}
