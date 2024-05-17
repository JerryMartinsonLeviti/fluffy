import '/components/vision_board_option/vision_board_option_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vision_board_add_to_drawer_model.dart';
export 'vision_board_add_to_drawer_model.dart';

class VisionBoardAddToDrawerWidget extends StatefulWidget {
  const VisionBoardAddToDrawerWidget({super.key});

  @override
  State<VisionBoardAddToDrawerWidget> createState() =>
      _VisionBoardAddToDrawerWidgetState();
}

class _VisionBoardAddToDrawerWidgetState
    extends State<VisionBoardAddToDrawerWidget> {
  late VisionBoardAddToDrawerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VisionBoardAddToDrawerModel());

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'Add to Vision Board',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Text(
                    'Please select a Vision Board to Add or Create a New Board',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.visionBoardOptionModel1,
                          updateCallback: () => setState(() {}),
                          child: VisionBoardOptionWidget(),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.visionBoardOptionModel2,
                          updateCallback: () => setState(() {}),
                          child: VisionBoardOptionWidget(),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.visionBoardOptionModel3,
                          updateCallback: () => setState(() {}),
                          child: VisionBoardOptionWidget(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Cancel',
                  options: FFButtonOptions(
                    height: 30.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
