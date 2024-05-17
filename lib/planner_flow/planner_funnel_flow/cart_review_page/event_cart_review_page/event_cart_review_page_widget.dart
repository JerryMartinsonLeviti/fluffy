import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import '/planner_flow/planner_funnel_flow/cart_review_page/cart_option_review_card/cart_option_review_card_widget.dart';
import '/planner_flow/planner_funnel_flow/cart_review_page/favorite_card/favorite_card_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'event_cart_review_page_model.dart';
export 'event_cart_review_page_model.dart';

class EventCartReviewPageWidget extends StatefulWidget {
  const EventCartReviewPageWidget({
    super.key,
    required this.eventRow,
  });

  final EventsRow? eventRow;

  @override
  State<EventCartReviewPageWidget> createState() =>
      _EventCartReviewPageWidgetState();
}

class _EventCartReviewPageWidgetState extends State<EventCartReviewPageWidget> {
  late EventCartReviewPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventCartReviewPageModel());

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
          child: FutureBuilder<List<CartsRow>>(
            future: (_model.requestCompleter ??= Completer<List<CartsRow>>()
                  ..complete(CartsTable().queryRows(
                    queryFn: (q) => q.eq(
                      'FK_Event',
                      widget.eventRow?.pKEvents,
                    ),
                  )))
                .future,
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitChasingDots(
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 50.0,
                    ),
                  ),
                );
              }
              List<CartsRow> containerCartsRowList = snapshot.data!;
              return Container(
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.plannerAppBarComponentModel,
                        updateCallback: () => setState(() {}),
                        child: PlannerAppBarComponentWidget(),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 50.0, 0.0, 0.0),
                          child: Text(
                            'Event name: ${valueOrDefault<String>(
                              widget.eventRow?.eventName,
                              'noEventName',
                            )}',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  100.0, 0.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'OPTIONS BASKET',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 30.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 10.0)),
                              ),
                            ),
                          ),
                        ].addToStart(SizedBox(height: 10.0)),
                      ),
                      Container(
                        width: 976.0,
                        height: 1131.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Find Your Perfect Match ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Builder(
                                    builder: (context) {
                                      final cartIndex =
                                          containerCartsRowList.toList();
                                      return Wrap(
                                        spacing: 0.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: List.generate(
                                            cartIndex.length, (cartIndexIndex) {
                                          final cartIndexItem =
                                              cartIndex[cartIndexIndex];
                                          return CartOptionReviewCardWidget(
                                            key: Key(
                                                'Key18h_${cartIndexIndex}_of_${cartIndex.length}'),
                                            cartRow: cartIndexItem,
                                            eventRow: widget.eventRow!,
                                            onPressRemove: () async {
                                              setState(() => _model
                                                  .requestCompleter = null);
                                              await _model
                                                  .waitForRequestCompleted();
                                              FFAppState().update(() {});
                                            },
                                            onUpdateCartState: () async {
                                              setState(() => _model
                                                  .requestCompleter = null);
                                              await _model
                                                  .waitForRequestCompleted();
                                              setState(() {});
                                            },
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'WISHLIST',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 846.0,
                                          constraints: BoxConstraints(
                                            maxWidth: 380.0,
                                            maxHeight: 400.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Wrap(
                                            spacing: 0.0,
                                            runSpacing: 0.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                constraints: BoxConstraints(
                                                  maxWidth: 300.0,
                                                  maxHeight: 300.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      offset: Offset(
                                                        0.0,
                                                        2.0,
                                                      ),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                child: wrapWithModel(
                                                  model:
                                                      _model.favoriteCardModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: FavoriteCardWidget(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
