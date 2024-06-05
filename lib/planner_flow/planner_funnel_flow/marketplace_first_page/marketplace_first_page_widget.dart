import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/region_card/region_card_widget.dart';
import '/components/venue_card_component/venue_card_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/listing/wrap_faq_row/wrap_faq_row_widget.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import '/planner_flow/search_bar/search_bar/search_bar_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'marketplace_first_page_model.dart';
export 'marketplace_first_page_model.dart';

class MarketplaceFirstPageWidget extends StatefulWidget {
  const MarketplaceFirstPageWidget({super.key});

  @override
  State<MarketplaceFirstPageWidget> createState() =>
      _MarketplaceFirstPageWidgetState();
}

class _MarketplaceFirstPageWidgetState
    extends State<MarketplaceFirstPageWidget> {
  late MarketplaceFirstPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarketplaceFirstPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: 1000.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model
                                                    .plannerAppBarComponentModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    PlannerAppBarComponentWidget(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 80.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Welcome!',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 35.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 30.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 50.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Enter Your Basic Criteria & Start a New Event Project ',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 30.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                wrapWithModel(
                                  model: _model.searchBarModel,
                                  updateCallback: () => setState(() {}),
                                  child: SearchBarWidget(),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 50.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Or Browse By City',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) {
                                          final regionInx = FFAppState()
                                              .SilverSpikeLocations
                                              .toList();
                                          return Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children:
                                                List.generate(regionInx.length,
                                                    (regionInxIndex) {
                                              final regionInxItem =
                                                  regionInx[regionInxIndex];
                                              return RegionCardWidget(
                                                key: Key(
                                                    'Keyu35_${regionInxIndex}_of_${regionInx.length}'),
                                                regionInfo: regionInxItem,
                                              );
                                            }),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                FutureBuilder<List<VenuesRow>>(
                                  future: (_model.requestCompleter ??=
                                          Completer<List<VenuesRow>>()
                                            ..complete(VenuesTable().queryRows(
                                              queryFn: (q) => q,
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
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<VenuesRow> venueVenuesRowList =
                                        snapshot.data!;
                                    return Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.newVendor =
                                                          await VendorsTable()
                                                              .insert({
                                                        'vendor_name':
                                                            'noVendorName',
                                                      });
                                                      FFAppState().PKVendors =
                                                          _model.newVendor!
                                                              .pKVendors;
                                                      FFAppState()
                                                          .update(() {});

                                                      setState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.add_box,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    'add Vendor',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.newAddress =
                                                          await AddressesTable()
                                                              .insert({
                                                        'countryCode': 'US',
                                                      });
                                                      await VenuesTable()
                                                          .insert({
                                                        'FK_Vendor':
                                                            FFAppState()
                                                                .PKVendors,
                                                        'FK_Address': _model
                                                            .newAddress
                                                            ?.pKAddresses,
                                                        'taxRate': .08,
                                                        'gratuityRate': .08,
                                                      });
                                                      setState(() => _model
                                                              .requestCompleter =
                                                          null);
                                                      await _model
                                                          .waitForRequestCompleted();

                                                      FFAppState()
                                                          .update(() {});

                                                      setState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.add_box,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    'add Venue',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final venueIndex =
                                                  venueVenuesRowList.toList();
                                              return Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: List.generate(
                                                    venueIndex.length,
                                                    (venueIndexIndex) {
                                                  final venueIndexItem =
                                                      venueIndex[
                                                          venueIndexIndex];
                                                  return VenueCardComponentWidget(
                                                    key: Key(
                                                        'Keyhhw_${venueIndexIndex}_of_${venueIndex.length}'),
                                                    venueRow: venueIndexItem,
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FutureBuilder<List<FaqAssetsRow>>(
                                    future: FaqAssetsTable().queryRows(
                                      queryFn: (q) => q.eq(
                                        'SiteFaqFrontPageVisable',
                                        true,
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitChasingDots(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      List<FaqAssetsRow>
                                          faqContainerFaqAssetsRowList =
                                          snapshot.data!;
                                      return Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 390.0,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: Text(
                                                  'FAQ\'s',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        fontSize: 30.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final faqIndex =
                                                      faqContainerFaqAssetsRowList
                                                          .toList();
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: List.generate(
                                                        faqIndex.length,
                                                        (faqIndexIndex) {
                                                      final faqIndexItem =
                                                          faqIndex[
                                                              faqIndexIndex];
                                                      return WrapFaqRowWidget(
                                                        key: Key(
                                                            'Keyrj2_${faqIndexIndex}_of_${faqIndex.length}'),
                                                        question:
                                                            valueOrDefault<
                                                                String>(
                                                          faqIndexItem.question,
                                                          'q',
                                                        ),
                                                        answer: valueOrDefault<
                                                            String>(
                                                          faqIndexItem.answer,
                                                          'a',
                                                        ),
                                                        hide: true,
                                                        onUpdate: (question,
                                                            answer) async {},
                                                        onDelete: () async {},
                                                        onHideToggle:
                                                            () async {},
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  text: 'See All FAQ\'s',
                                                  options: FFButtonOptions(
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent2,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            22.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
