import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listing/wrap_desc_row/wrap_desc_row_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'listing_what_is_included_model.dart';
export 'listing_what_is_included_model.dart';

class ListingWhatIsIncludedWidget extends StatefulWidget {
  const ListingWhatIsIncludedWidget({
    super.key,
    this.vendorPK,
    this.venuePK,
  });

  final int? vendorPK;
  final int? venuePK;

  @override
  State<ListingWhatIsIncludedWidget> createState() =>
      _ListingWhatIsIncludedWidgetState();
}

class _ListingWhatIsIncludedWidgetState
    extends State<ListingWhatIsIncludedWidget> {
  late ListingWhatIsIncludedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListingWhatIsIncludedModel());

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
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 160.0,
                  height: 160.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/teams/bjcNcUcJFzipGWqoNchx/assets/3y3xpjyssqb1/Image_5-18-24_at_6.27_PM.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'What\'s Included',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 28.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'Bar & Dining Waitstaff',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Text(
                            'Selection Food & Beverage Options',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            'Access & Use of Adjacent Terrace',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            'Specially Reserved Event Space',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                      FutureBuilder<List<DescriptionAssetsRow>>(
                        future: (_model.requestCompleter ??=
                                Completer<List<DescriptionAssetsRow>>()
                                  ..complete(DescriptionAssetsTable().queryRows(
                                    queryFn: (q) => q
                                        .eq(
                                          'FK_Vendor',
                                          widget.vendorPK,
                                        )
                                        .eq(
                                          'whats_included',
                                          true,
                                        )
                                        .order('created_at'),
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
                          List<DescriptionAssetsRow>
                              wEDBVendorDescriptionAssetsRowList =
                              snapshot.data!;
                          return Container(
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await DescriptionAssetsTable().insert({
                                          'FK_Vendor': widget.vendorPK,
                                          'whats_included': true,
                                          'description': 'new What\'s Included',
                                        });
                                      },
                                      child: Icon(
                                        Icons.settings_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                    Text(
                                      'Vendor\'s What\'s Included',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                                Builder(
                                  builder: (context) {
                                    final whatsIncludedItem =
                                        wEDBVendorDescriptionAssetsRowList
                                            .toList();
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          whatsIncludedItem.length,
                                          (whatsIncludedItemIndex) {
                                        final whatsIncludedItemItem =
                                            whatsIncludedItem[
                                                whatsIncludedItemIndex];
                                        return Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 380.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: WrapDescRowWidget(
                                            key: Key(
                                                'Keya2y_${whatsIncludedItemIndex}_of_${whatsIncludedItem.length}'),
                                            description: whatsIncludedItemItem
                                                .description,
                                            hide: whatsIncludedItemItem.hide,
                                            onUpdateDesc: (description) async {
                                              await DescriptionAssetsTable()
                                                  .update(
                                                data: {
                                                  'description': description,
                                                },
                                                matchingRows: (rows) => rows.eq(
                                                  'PK_DescriptionAssets',
                                                  whatsIncludedItemItem
                                                      .pKDescriptionAssets,
                                                ),
                                              );
                                              setState(() => _model
                                                  .requestCompleter = null);
                                              await _model
                                                  .waitForRequestCompleted();
                                              FFAppState().update(() {});
                                            },
                                            onDelete: () async {
                                              await DescriptionAssetsTable()
                                                  .delete(
                                                matchingRows: (rows) => rows.eq(
                                                  'PK_DescriptionAssets',
                                                  whatsIncludedItemItem
                                                      .pKDescriptionAssets,
                                                ),
                                              );
                                              setState(() => _model
                                                  .requestCompleter = null);
                                              await _model
                                                  .waitForRequestCompleted();
                                              FFAppState().update(() {});
                                            },
                                            onHideToggle: () async {
                                              await DescriptionAssetsTable()
                                                  .update(
                                                data: {
                                                  'hide': whatsIncludedItemItem
                                                          .hide ==
                                                      false,
                                                },
                                                matchingRows: (rows) => rows.eq(
                                                  'PK_DescriptionAssets',
                                                  whatsIncludedItemItem
                                                      .pKDescriptionAssets,
                                                ),
                                              );
                                              setState(() => _model
                                                  .requestCompleter = null);
                                              await _model
                                                  .waitForRequestCompleted();
                                              FFAppState().update(() {});
                                            },
                                          ),
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
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
