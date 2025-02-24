import '/backend/supabase/supabase.dart';
import '/components/address/address_widget.dart';
import '/components/product_detail_page_options_language/product_detail_page_options_language_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'venue_detail_page_model.dart';
export 'venue_detail_page_model.dart';

class VenueDetailPageWidget extends StatefulWidget {
  const VenueDetailPageWidget({
    super.key,
    required this.venueRow,
    required this.vendorRow,
  });

  final VenuesRow? venueRow;
  final VendorsRow? vendorRow;

  @override
  State<VenueDetailPageWidget> createState() => _VenueDetailPageWidgetState();
}

class _VenueDetailPageWidgetState extends State<VenueDetailPageWidget> {
  late VenueDetailPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VenueDetailPageModel());

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
          child: FutureBuilder<List<VacvRow>>(
            future: VacvTable().queryRows(
              queryFn: (q) => q.eq(
                'PK_ParentVendor',
                widget.venueRow?.fKVendor,
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
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 50.0,
                    ),
                  ),
                );
              }
              List<VacvRow> containerVacvRowList = snapshot.data!;
              return Container(
                decoration: BoxDecoration(),
                child: FutureBuilder<List<EventsRow>>(
                  future: EventsTable().querySingleRow(
                    queryFn: (q) => q.eq(
                      'PK_Events',
                      FFAppState().PKActiveEvent,
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
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<EventsRow> containerEventsRowList = snapshot.data!;
                    final containerEventsRow = containerEventsRowList.isNotEmpty
                        ? containerEventsRowList.first
                        : null;
                    return Container(
                      constraints: BoxConstraints(
                        minWidth: 380.0,
                      ),
                      decoration: BoxDecoration(),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Builder(
                              builder: (context) {
                                final idx = containerVacvRowList.toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children:
                                      List.generate(idx.length, (idxIndex) {
                                    final idxItem = idx[idxIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                idxItem.pKParentVendor
                                                    ?.toString(),
                                                'no Parent',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                idxItem.pKImageAssets
                                                    ?.toString(),
                                                'no Image Key',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ]
                                              .divide(SizedBox(width: 10.0))
                                              .around(SizedBox(width: 10.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [],
                                        ),
                                      ],
                                    );
                                  }),
                                );
                              },
                            ),
                            Builder(
                              builder: (context) {
                                final idx2 = functions
                                        .filterVacv(
                                            containerVacvRowList.toList(),
                                            'PK_ImageAssets')
                                        ?.toList() ??
                                    [];
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children:
                                      List.generate(idx2.length, (idx2Index) {
                                    final idx2Item = idx2[idx2Index];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                idx2Item.pKParentVendor
                                                    ?.toString(),
                                                'no Parent',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                idx2Item.pKImageAssets
                                                    ?.toString(),
                                                'no Image Key',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ]
                                              .divide(SizedBox(width: 10.0))
                                              .around(SizedBox(width: 10.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [],
                                        ),
                                      ],
                                    );
                                  }),
                                );
                              },
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: double.infinity,
                                  constraints: BoxConstraints(
                                    minHeight: 50.0,
                                    maxHeight: 100.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await CartsTable().insert({
                                          'FK_Event':
                                              FFAppState().PKActiveEvent,
                                          'FK_Venue': widget.venueRow?.pKVenues,
                                          'qtyGuests':
                                              containerEventsRow?.guestCount,
                                        });

                                        context.pushNamed(
                                          'EventCartReviewPage',
                                          queryParameters: {
                                            'eventRow': serializeParam(
                                              containerEventsRow,
                                              ParamType.SupabaseRow,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      text: 'Add to new Cart',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    Text(
                                      'Event: ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        containerEventsRow?.eventName,
                                        'noEvent',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      '.  Guest Count is: ${valueOrDefault<String>(
                                        containerEventsRow?.guestCount
                                            ?.toString(),
                                        '0',
                                      )}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '- This Venue is in your Carts for 2 other events: X and Y. (hyperlink to change event)\n- You already have two active bidding carts already for this event with venues A and B.  We have added this selector cart to the top of your wishlist instead.\n- \n- Please pick one Event Space (or select Vendor\'s choice)\n- Please pick one Package\n\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Container(
                                          width: 800.0,
                                          height: 700.0,
                                          constraints: BoxConstraints(
                                            maxWidth: 380.0,
                                            maxHeight: 600.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        'https://picsum.photos/seed/335/600',
                                                        width: 300.0,
                                                        height: 200.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Wrap(
                                                    spacing: 0.0,
                                                    runSpacing: 0.0,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    crossAxisAlignment:
                                                        WrapCrossAlignment
                                                            .start,
                                                    direction: Axis.horizontal,
                                                    runAlignment:
                                                        WrapAlignment.start,
                                                    verticalDirection:
                                                        VerticalDirection.down,
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      20.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              widget.vendorRow
                                                                  ?.vendorDescription,
                                                              'No Description',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Wrap(
                                                    spacing: 0.0,
                                                    runSpacing: 0.0,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    crossAxisAlignment:
                                                        WrapCrossAlignment
                                                            .start,
                                                    direction: Axis.horizontal,
                                                    runAlignment:
                                                        WrapAlignment.start,
                                                    verticalDirection:
                                                        VerticalDirection.down,
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      20.0,
                                                                      0.0,
                                                                      20.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .productDetailPageOptionsLanguageModel,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                ProductDetailPageOptionsLanguageWidget(),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  20.0),
                                                      child: FutureBuilder<
                                                          List<AddressesRow>>(
                                                        future: (_model
                                                                    .requestCompleter ??=
                                                                Completer<
                                                                    List<
                                                                        AddressesRow>>()
                                                                  ..complete(
                                                                      AddressesTable()
                                                                          .querySingleRow(
                                                                    queryFn:
                                                                        (q) => q
                                                                            .eq(
                                                                      'PK_Addresses',
                                                                      widget
                                                                          .vendorRow
                                                                          ?.pKVendors,
                                                                    ),
                                                                  )))
                                                            .future,
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    SpinKitChasingDots(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  size: 50.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<AddressesRow>
                                                              addressDBAddressesRowList =
                                                              snapshot.data!;
                                                          final addressDBAddressesRow =
                                                              addressDBAddressesRowList
                                                                      .isNotEmpty
                                                                  ? addressDBAddressesRowList
                                                                      .first
                                                                  : null;
                                                          return Container(
                                                            width:
                                                                double.infinity,
                                                            height: 200.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .addressModel,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  AddressWidget(
                                                                street1:
                                                                    addressDBAddressesRow
                                                                        ?.streetName1,
                                                                street2:
                                                                    addressDBAddressesRow
                                                                        ?.streetName2,
                                                                city:
                                                                    addressDBAddressesRow
                                                                        ?.city,
                                                                state: addressDBAddressesRow
                                                                    ?.regionCode,
                                                                zip: addressDBAddressesRow
                                                                    ?.postalCode,
                                                                country:
                                                                    addressDBAddressesRow
                                                                        ?.countryCode,
                                                                addressPK:
                                                                    addressDBAddressesRow!
                                                                        .pKAddresses,
                                                                onSave:
                                                                    () async {
                                                                  setState(() =>
                                                                      _model.requestCompleter =
                                                                          null);
                                                                  await _model
                                                                      .waitForRequestCompleted();
                                                                },
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ],
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
                            Container(
                              width: 1028.0,
                              height: 207.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Builder(
                                builder: (context) {
                                  final idx3 = functions
                                          .filterVacv(
                                              containerVacvRowList.toList(),
                                              'PK_ImageAssets')
                                          ?.toList() ??
                                      [];
                                  if (idx3.isEmpty) {
                                    return Image.asset(
                                      'https://picsum.photos/200',
                                    );
                                  }
                                  return Container(
                                    width: double.infinity,
                                    height: 180.0,
                                    child: CarouselSlider.builder(
                                      itemCount: idx3.length,
                                      itemBuilder: (context, idx3Index, _) {
                                        final idx3Item = idx3[idx3Index];
                                        return ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: CachedNetworkImage(
                                            fadeInDuration:
                                                Duration(milliseconds: 500),
                                            fadeOutDuration:
                                                Duration(milliseconds: 500),
                                            imageUrl: idx3Item.imageUrl!,
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                            errorWidget:
                                                (context, error, stackTrace) =>
                                                    Image.asset(
                                              'assets/images/error_image.png',
                                              width: 300.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        );
                                      },
                                      carouselController:
                                          _model.carouselController ??=
                                              CarouselController(),
                                      options: CarouselOptions(
                                        initialPage:
                                            max(0, min(1, idx3.length - 1)),
                                        viewportFraction: 0.5,
                                        disableCenter: true,
                                        enlargeCenterPage: true,
                                        enlargeFactor: 0.25,
                                        enableInfiniteScroll: true,
                                        scrollDirection: Axis.horizontal,
                                        autoPlay: false,
                                        onPageChanged: (index, _) =>
                                            _model.carouselCurrentIndex = index,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            FutureBuilder<List<FunctionSpacesRow>>(
                              future: FunctionSpacesTable().queryRows(
                                queryFn: (q) => q.eq(
                                  'FK_Venue',
                                  widget.venueRow?.pKVenues,
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
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<FunctionSpacesRow>
                                    containerFunctionSpacesRowList =
                                    snapshot.data!;
                                return Container(
                                  decoration: BoxDecoration(),
                                );
                              },
                            ),
                            FutureBuilder<List<PackagesRow>>(
                              future: PackagesTable().queryRows(
                                queryFn: (q) => q.eq(
                                  'FK_Vendor',
                                  widget.venueRow?.fKVendor,
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
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<PackagesRow> containerPackagesRowList =
                                    snapshot.data!;
                                return Container(
                                  decoration: BoxDecoration(),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
