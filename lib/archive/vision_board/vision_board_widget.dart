import '/components/vision_board_product_card/vision_board_product_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/event_price_card/price_predictor/price_predictor_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vision_board_model.dart';
export 'vision_board_model.dart';

class VisionBoardWidget extends StatefulWidget {
  const VisionBoardWidget({super.key});

  @override
  State<VisionBoardWidget> createState() => _VisionBoardWidgetState();
}

class _VisionBoardWidgetState extends State<VisionBoardWidget> {
  late VisionBoardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VisionBoardModel());

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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text(
                          'Vision Board',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).accent1,
                                    fontSize: 28.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        indent: 300.0,
                        endIndent: 300.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text(
                          'Manhattan City Lights  Dinner',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      wrapWithModel(
                        model: _model.visionBoardProductCardModel1,
                        updateCallback: () => setState(() {}),
                        child: VisionBoardProductCardWidget(),
                      ),
                      wrapWithModel(
                        model: _model.visionBoardProductCardModel2,
                        updateCallback: () => setState(() {}),
                        child: VisionBoardProductCardWidget(),
                      ),
                      wrapWithModel(
                        model: _model.visionBoardProductCardModel3,
                        updateCallback: () => setState(() {}),
                        child: VisionBoardProductCardWidget(),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.pricePredictorModel,
                  updateCallback: () => setState(() {}),
                  child: PricePredictorWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
