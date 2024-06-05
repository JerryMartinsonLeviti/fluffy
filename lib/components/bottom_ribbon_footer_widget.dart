import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_ribbon_footer_model.dart';
export 'bottom_ribbon_footer_model.dart';

class BottomRibbonFooterWidget extends StatefulWidget {
  const BottomRibbonFooterWidget({super.key});

  @override
  State<BottomRibbonFooterWidget> createState() =>
      _BottomRibbonFooterWidgetState();
}

class _BottomRibbonFooterWidgetState extends State<BottomRibbonFooterWidget> {
  late BottomRibbonFooterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomRibbonFooterModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF574845),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Wrap(
              spacing: 0.0,
              runSpacing: 0.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 250.0,
                  constraints: BoxConstraints(
                    minWidth: 250.0,
                    maxWidth: 380.0,
                  ),
                  decoration: BoxDecoration(),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('DevModeAccess');
                          },
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/teams/bjcNcUcJFzipGWqoNchx/assets/w179wbqfa7ql/SilverSpike_Logo_Standalone_White.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (FFAppState().DevModeEnabled == true) {
                                context.pushNamed('LiaisonDashboard');
                              }
                            },
                            text: 'SilverSpike',
                            options: FFButtonOptions(
                              width: 200.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF574845),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 40.0,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    minWidth: 250.0,
                    maxWidth: 380.0,
                  ),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'About Us',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 22.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        'Our Story',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        'FAQs',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        'Help Center',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        'Terms & Privacy',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    minWidth: 250.0,
                    maxWidth: 380.0,
                  ),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Partner Portal',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 22.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        'Become a Partner',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        'Partner FAQs',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
              ],
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: 380.0,
              ),
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 20.0),
                child: Text(
                  'SilverSpike Inc. Copyright 2024. All rights reserved. ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).customColor2,
                        letterSpacing: 0.0,
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
