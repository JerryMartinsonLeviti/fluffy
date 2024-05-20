import '/archive/archived_r_f_p_sent_modal/archived_r_f_p_sent_modal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'archived_r_f_p_sent_page_model.dart';
export 'archived_r_f_p_sent_page_model.dart';

class ArchivedRFPSentPageWidget extends StatefulWidget {
  const ArchivedRFPSentPageWidget({super.key});

  @override
  State<ArchivedRFPSentPageWidget> createState() =>
      _ArchivedRFPSentPageWidgetState();
}

class _ArchivedRFPSentPageWidgetState extends State<ArchivedRFPSentPageWidget> {
  late ArchivedRFPSentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArchivedRFPSentPageModel());

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
            model: _model.archivedRFPSentModalModel,
            updateCallback: () => setState(() {}),
            child: ArchivedRFPSentModalWidget(),
          ),
        ),
      ),
    );
  }
}
