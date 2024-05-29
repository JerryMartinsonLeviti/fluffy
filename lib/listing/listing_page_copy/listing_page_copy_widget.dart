import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/bottom_ribbon_footer_widget.dart';
import '/components/event_space_component/event_space_component_widget.dart';
import '/components/image_gallery_manager_component_widget.dart';
import '/components/packages_component/packages_component_widget.dart';
import '/components/product_detail_page_options_language/product_detail_page_options_language_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/listing/listing_f_a_qs/listing_f_a_qs_widget.dart';
import '/listing/listing_restaurant_detail_component/listing_restaurant_detail_component_widget.dart';
import '/listing/listing_terms/listing_terms_widget.dart';
import '/listing/listing_what_is_included/listing_what_is_included_widget.dart';
import '/planner_flow/event_price_card/price_predictor/price_predictor_widget.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'listing_page_copy_model.dart';
export 'listing_page_copy_model.dart';

class ListingPageCopyWidget extends StatefulWidget {
  const ListingPageCopyWidget({
    super.key,
    required this.venuePK,
    required this.vendorPK,
    this.cartPK,
  });

  final int? venuePK;
  final int? vendorPK;
  final int? cartPK;

  @override
  State<ListingPageCopyWidget> createState() => _ListingPageCopyWidgetState();
}

class _ListingPageCopyWidgetState extends State<ListingPageCopyWidget> {
  late ListingPageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListingPageCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.event = await EventsTable().queryRows(
        queryFn: (q) => q.eq(
          'PK_Events',
          FFAppState().PKActiveEvent,
        ),
      );
      _model.pageEvent = _model.event?.first;
      if (widget.cartPK != null) {
        _model.queryCart = await CartsTable().queryRows(
          queryFn: (q) => q.eq(
            'PK_Carts',
            widget.cartPK,
          ),
        );
        _model.pageCart = _model.queryCart?.first;
      } else {
        _model.insertCart = await CartsTable().insert({
          'FK_Event': FFAppState().PKActiveEvent,
          'FK_Venue': widget.venuePK,
          'qtyGuests': _model.pageEvent?.guestCount,
        });
        _model.pageCart = _model.insertCart;
      }

      _model.cartInvoiceActionOutput = await actions.invoiceFromCart(
        _model.pageCart!,
      );
      setState(() {
        _model.cartInvoice = _model.cartInvoiceActionOutput;
      });
    });

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
          child: Container(
            decoration: BoxDecoration(),
            child: Container(
              decoration: BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FutureBuilder<List<VenuesRow>>(
                      future: (_model.requestCompleter3 ??=
                              Completer<List<VenuesRow>>()
                                ..complete(VenuesTable().querySingleRow(
                                  queryFn: (q) => q.eq(
                                    'PK_Venues',
                                    widget.venuePK,
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
                        List<VenuesRow> venueDBContainerVenuesRowList =
                            snapshot.data!;
                        final venueDBContainerVenuesRow =
                            venueDBContainerVenuesRowList.isNotEmpty
                                ? venueDBContainerVenuesRowList.first
                                : null;
                        return Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: FutureBuilder<List<VendorsRow>>(
                            future: VendorsTable().querySingleRow(
                              queryFn: (q) => q.eq(
                                'PK_Vendors',
                                widget.vendorPK,
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
                              List<VendorsRow> vendorDBContainerVendorsRowList =
                                  snapshot.data!;
                              final vendorDBContainerVendorsRow =
                                  vendorDBContainerVendorsRowList.isNotEmpty
                                      ? vendorDBContainerVendorsRowList.first
                                      : null;
                              return Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: FutureBuilder<List<VacvRow>>(
                                  future: VacvTable().queryRows(
                                    queryFn: (q) => q.eq(
                                      'PK_ParentVendor',
                                      widget.vendorPK,
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
                                    List<VacvRow> vACVDBContainerVacvRowList =
                                        snapshot.data!;
                                    return Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .plannerAppBarComponentModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        PlannerAppBarComponentWidget(),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Flexible(
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .listingRestaurantDetailComponentModel,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child:
                                                              ListingRestaurantDetailComponentWidget(
                                                            vendorRow:
                                                                vendorDBContainerVendorsRow!,
                                                            venueRow:
                                                                venueDBContainerVenuesRow!,
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          width: 380.0,
                                                          constraints:
                                                              BoxConstraints(
                                                            maxWidth: 380.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .pricePredictorModel,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                PricePredictorWidget(
                                                              eventRow: _model
                                                                  .pageEvent!,
                                                              cartRow: _model
                                                                  .pageCart!,
                                                              cartInvoice: _model
                                                                  .cartInvoice,
                                                              onRefreshEventDB:
                                                                  () async {
                                                                _model.eventUpdated =
                                                                    await EventsTable()
                                                                        .queryRows(
                                                                  queryFn:
                                                                      (q) =>
                                                                          q.eq(
                                                                    'PK_Events',
                                                                    _model
                                                                        .pageEvent
                                                                        ?.pKEvents,
                                                                  ),
                                                                );
                                                                setState(() {
                                                                  _model.pageEvent =
                                                                      _model
                                                                          .eventUpdated
                                                                          ?.first;
                                                                });

                                                                setState(() {});
                                                              },
                                                              onRefreshCartDB:
                                                                  () async {},
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          FutureBuilder<List<ImageAssetsRow>>(
                                            future: (_model
                                                        .requestCompleter2 ??=
                                                    Completer<
                                                        List<ImageAssetsRow>>()
                                                      ..complete(
                                                          ImageAssetsTable()
                                                              .queryRows(
                                                        queryFn: (q) => q
                                                            .eq(
                                                              'FK_Venue',
                                                              widget.venuePK,
                                                            )
                                                            .order('order',
                                                                ascending:
                                                                    true),
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ImageAssetsRow>
                                                  galleryRowImageAssetsRowList =
                                                  snapshot.data!;
                                              return Container(
                                                width: 1028.0,
                                                height: 207.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Builder(
                                                  builder: (context) {
                                                    final imageAsset =
                                                        galleryRowImageAssetsRowList
                                                            .toList();
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount:
                                                          imageAsset.length,
                                                      itemBuilder: (context,
                                                          imageAssetIndex) {
                                                        final imageAssetItem =
                                                            imageAsset[
                                                                imageAssetIndex];
                                                        return Container(
                                                          constraints:
                                                              BoxConstraints(
                                                            maxWidth: 300.0,
                                                            maxHeight: 250.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              imageAssetItem
                                                                  .imageUrl,
                                                              width: 300.0,
                                                              height: 200.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                          ),
                                          if (FFAppState().DevModeEnabled)
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  FutureBuilder<
                                                      List<ImageAssetsRow>>(
                                                    future: (_model
                                                                .requestCompleter6 ??=
                                                            Completer<
                                                                List<
                                                                    ImageAssetsRow>>()
                                                              ..complete(
                                                                  ImageAssetsTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q
                                                                        .eq(
                                                                          'FK_Venue',
                                                                          widget
                                                                              .venuePK,
                                                                        )
                                                                        .order(
                                                                            'order',
                                                                            ascending:
                                                                                true),
                                                              )))
                                                        .future,
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitChasingDots(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ImageAssetsRow>
                                                          venueImageEditImageAssetsRowList =
                                                          snapshot.data!;
                                                      return Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      _model.galleryVenueEditorDisabled =
                                                                          !_model
                                                                              .galleryVenueEditorDisabled;
                                                                    });
                                                                    setState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .settings_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Venue Images',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                            if (!_model
                                                                .galleryVenueEditorDisabled)
                                                              wrapWithModel(
                                                                model: _model
                                                                    .imageGalleryManagerComponentModel1,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    ImageGalleryManagerComponentWidget(
                                                                  immageAssetRows:
                                                                      venueImageEditImageAssetsRowList,
                                                                  onUpload:
                                                                      (originalURL,
                                                                          newURL) async {
                                                                    await ImageAssetsTable()
                                                                        .insert({
                                                                      'FK_Venue':
                                                                          widget
                                                                              .venuePK,
                                                                      'image_url':
                                                                          newURL,
                                                                      'originalURL':
                                                                          originalURL,
                                                                    });
                                                                    setState(() =>
                                                                        _model.requestCompleter2 =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted2();
                                                                    setState(() =>
                                                                        _model.requestCompleter3 =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted3();
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                  },
                                                                  onDbUpdate:
                                                                      () async {
                                                                    setState(() =>
                                                                        _model.requestCompleter6 =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted6();
                                                                    _model.cartInvoiceActionOutput2 =
                                                                        await actions
                                                                            .invoiceFromCart(
                                                                      _model
                                                                          .pageCart!,
                                                                    );
                                                                    setState(
                                                                        () {
                                                                      _model.cartInvoice =
                                                                          _model
                                                                              .cartInvoiceActionOutput2;
                                                                    });
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});

                                                                    setState(
                                                                        () {});
                                                                  },
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                  FutureBuilder<
                                                      List<ImageAssetsRow>>(
                                                    future: (_model
                                                                .requestCompleter1 ??=
                                                            Completer<
                                                                List<
                                                                    ImageAssetsRow>>()
                                                              ..complete(
                                                                  ImageAssetsTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q
                                                                        .eq(
                                                                          'FK_Vendor',
                                                                          widget
                                                                              .vendorPK,
                                                                        )
                                                                        .order(
                                                                            'order',
                                                                            ascending:
                                                                                true),
                                                              )))
                                                        .future,
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitChasingDots(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ImageAssetsRow>
                                                          vendorImageEditImageAssetsRowList =
                                                          snapshot.data!;
                                                      return Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      _model.galleryVendorEditorDisabled =
                                                                          !_model
                                                                              .galleryVendorEditorDisabled;
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .settings_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Vendor Images',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                            if (!_model
                                                                .galleryVendorEditorDisabled)
                                                              wrapWithModel(
                                                                model: _model
                                                                    .imageGalleryManagerComponentModel2,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    ImageGalleryManagerComponentWidget(
                                                                  immageAssetRows:
                                                                      vendorImageEditImageAssetsRowList,
                                                                  onUpload:
                                                                      (originalURL,
                                                                          newURL) async {
                                                                    await ImageAssetsTable()
                                                                        .insert({
                                                                      'FK_Vendor':
                                                                          widget
                                                                              .vendorPK,
                                                                      'image_url':
                                                                          newURL,
                                                                      'originalURL':
                                                                          originalURL,
                                                                    });
                                                                    setState(() =>
                                                                        _model.requestCompleter2 =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted2();
                                                                    setState(() =>
                                                                        _model.requestCompleter1 =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted1();
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                  },
                                                                  onDbUpdate:
                                                                      () async {
                                                                    setState(() =>
                                                                        _model.requestCompleter1 =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted1();
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                  },
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 20.0),
                                  child: wrapWithModel(
                                    model: _model
                                        .productDetailPageOptionsLanguageModel,
                                    updateCallback: () => setState(() {}),
                                    child:
                                        ProductDetailPageOptionsLanguageWidget(),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 2876.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 1.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Function Spaces',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Divider(
                                            thickness: 2.0,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          FutureBuilder<
                                              List<FunctionSpacesRow>>(
                                            future: (_model
                                                        .requestCompleter4 ??=
                                                    Completer<
                                                        List<
                                                            FunctionSpacesRow>>()
                                                      ..complete(
                                                          FunctionSpacesTable()
                                                              .queryRows(
                                                        queryFn: (q) => q
                                                            .eq(
                                                              'FK_Venue',
                                                              widget.venuePK,
                                                            )
                                                            .order(
                                                                'created_at'),
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<FunctionSpacesRow>
                                                  fsdbFunctionSpacesRowList =
                                                  snapshot.data!;
                                              return Container(
                                                decoration: BoxDecoration(),
                                                child: Visibility(
                                                  visible: true,
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .eventSpaceComponentModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        EventSpaceComponentWidget(
                                                      functionSpaceRows:
                                                          fsdbFunctionSpacesRowList,
                                                      cart: _model.pageCart!,
                                                      onSave: () async {
                                                        setState(() => _model
                                                                .requestCompleter4 =
                                                            null);
                                                        await _model
                                                            .waitForRequestCompleted4();
                                                        _model.cartrf =
                                                            await CartsTable()
                                                                .queryRows(
                                                          queryFn: (q) => q.eq(
                                                            'PK_Carts',
                                                            _model.pageCart
                                                                ?.pKCarts,
                                                          ),
                                                        );
                                                        setState(() {
                                                          _model.pageCart =
                                                              _model.cartrf
                                                                  ?.first;
                                                        });
                                                        _model.ao3Ci =
                                                            await actions
                                                                .invoiceFromCart(
                                                          _model.pageCart!,
                                                        );
                                                        setState(() {
                                                          _model.cartInvoice =
                                                              _model.ao3Ci;
                                                        });
                                                        FFAppState()
                                                            .update(() {});

                                                        setState(() {});
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          valueOrDefault<String>(
                                            widget.cartPK?.toString(),
                                            'x',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            child: Text(
                                              'Packages',
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                        Divider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                        if (true)
                                          FutureBuilder<List<PackagesRow>>(
                                            future: (_model
                                                        .requestCompleter5 ??=
                                                    Completer<
                                                        List<PackagesRow>>()
                                                      ..complete(PackagesTable()
                                                          .queryRows(
                                                        queryFn: (q) => q
                                                            .eq(
                                                              'FK_Vendor',
                                                              widget.vendorPK,
                                                            )
                                                            .order(
                                                                'created_at'),
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PackagesRow>
                                                  packagesPackagesRowList =
                                                  snapshot.data!;
                                              return Container(
                                                decoration: BoxDecoration(),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .packagesComponentModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      PackagesComponentWidget(
                                                    packagesRows:
                                                        packagesPackagesRowList,
                                                    cart: _model.pageCart,
                                                    dbRefesh: () async {
                                                      setState(() => _model
                                                              .requestCompleter5 =
                                                          null);
                                                      await _model
                                                          .waitForRequestCompleted5();
                                                      _model.carta =
                                                          await CartsTable()
                                                              .queryRows(
                                                        queryFn: (q) => q.eq(
                                                          'PK_Carts',
                                                          _model.pageCart
                                                              ?.pKCarts,
                                                        ),
                                                      );
                                                      _model.pageCart =
                                                          _model.carta?.first;
                                                      _model.ao4 = await actions
                                                          .invoiceFromCart(
                                                        _model.pageCart!,
                                                      );
                                                      setState(() {
                                                        _model.cartInvoice =
                                                            _model.ao4;
                                                      });
                                                      FFAppState()
                                                          .update(() {});

                                                      setState(() {});
                                                    },
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        wrapWithModel(
                                          model:
                                              _model.listingWhatIsIncludedModel,
                                          updateCallback: () => setState(() {}),
                                          child: ListingWhatIsIncludedWidget(),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.listingFAQsModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: ListingFAQsWidget(
                                              venkdorPK: widget.vendorPK!,
                                              venuePK: widget.venuePK!,
                                            ),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.listingTermsModel,
                                          updateCallback: () => setState(() {}),
                                          child: ListingTermsWidget(
                                            vendorPK: widget.vendorPK!,
                                            venuePK: widget.venuePK!,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.bottomRibbonFooterModel,
                                          updateCallback: () => setState(() {}),
                                          child: BottomRibbonFooterWidget(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            FutureBuilder<List<VacvRow>>(
                              future: VacvTable().queryRows(
                                queryFn: (q) => q.eq(
                                  'PK_ParentVendor',
                                  widget.vendorPK,
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
                                List<VacvRow> containerVacvRowList =
                                    snapshot.data!;
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      List<EventsRow> containerEventsRowList =
                                          snapshot.data!;
                                      final containerEventsRow =
                                          containerEventsRowList.isNotEmpty
                                              ? containerEventsRowList.first
                                              : null;
                                      return Container(
                                        constraints: BoxConstraints(
                                          minWidth: 380.0,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if (false)
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Builder(
                                                      builder: (context) {
                                                        final idx =
                                                            containerVacvRowList
                                                                .toList();
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children:
                                                              List.generate(
                                                                  idx.length,
                                                                  (idxIndex) {
                                                            final idxItem =
                                                                idx[idxIndex];
                                                            return Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        idxItem
                                                                            .pKParentVendor
                                                                            ?.toString(),
                                                                        'no Parent',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        idxItem
                                                                            .pKImageAssets
                                                                            ?.toString(),
                                                                        'no Image Key',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ]
                                                                      .divide(SizedBox(
                                                                          width:
                                                                              10.0))
                                                                      .around(SizedBox(
                                                                          width:
                                                                              10.0)),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
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
                                                                    containerVacvRowList
                                                                        .toList(),
                                                                    'PK_ImageAssets')
                                                                ?.toList() ??
                                                            [];
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children:
                                                              List.generate(
                                                                  idx2.length,
                                                                  (idx2Index) {
                                                            final idx2Item =
                                                                idx2[idx2Index];
                                                            return Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        idx2Item
                                                                            .pKParentVendor
                                                                            ?.toString(),
                                                                        'no Parent',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        idx2Item
                                                                            .pKImageAssets
                                                                            ?.toString(),
                                                                        'no Image Key',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ]
                                                                      .divide(SizedBox(
                                                                          width:
                                                                              10.0))
                                                                      .around(SizedBox(
                                                                          width:
                                                                              10.0)),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [],
                                                                ),
                                                              ],
                                                            );
                                                          }),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
