import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pending_confirmation_modal_model.dart';
export 'pending_confirmation_modal_model.dart';

class PendingConfirmationModalWidget extends StatefulWidget {
  const PendingConfirmationModalWidget({super.key});

  @override
  State<PendingConfirmationModalWidget> createState() =>
      _PendingConfirmationModalWidgetState();
}

class _PendingConfirmationModalWidgetState
    extends State<PendingConfirmationModalWidget> {
  late PendingConfirmationModalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PendingConfirmationModalModel());

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
      width: 806.0,
      height: 156.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(1.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                child: Icon(
                  Icons.close_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 20.0, 0.0),
                  child: Icon(
                    Icons.notification_important,
                    color: FlutterFlowTheme.of(context).error,
                    size: 30.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'You have 2 Requests for Proposal awating response',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).secondary,
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1.0,
              indent: 150.0,
              endIndent: 150.0,
              color: FlutterFlowTheme.of(context).primary,
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 0.0),
                child: Text(
                  'View ',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 25.0,
                        letterSpacing: 0.0,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
