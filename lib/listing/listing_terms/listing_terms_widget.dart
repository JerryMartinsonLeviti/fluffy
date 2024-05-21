import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listing/wrap_term_row/wrap_term_row_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'listing_terms_model.dart';
export 'listing_terms_model.dart';

class ListingTermsWidget extends StatefulWidget {
  const ListingTermsWidget({
    super.key,
    required this.vendorPK,
    required this.venuePK,
  });

  final int? vendorPK;
  final int? venuePK;

  @override
  State<ListingTermsWidget> createState() => _ListingTermsWidgetState();
}

class _ListingTermsWidgetState extends State<ListingTermsWidget> {
  late ListingTermsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListingTermsModel());

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
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Text(
                      'Terms',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 30.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                  child: Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 28.0,
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2.0,
              indent: 220.0,
              endIndent: 220.0,
              color: FlutterFlowTheme.of(context).primary,
            ),
            Text(
              '(in addition to SilverSpike\'s Terms of Use)',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                    decoration: TextDecoration.underline,
                  ),
            ),
            FutureBuilder<List<TermAssetsRow>>(
              future:
                  (_model.requestCompleter ??= Completer<List<TermAssetsRow>>()
                        ..complete(TermAssetsTable().queryRows(
                          queryFn: (q) => q.eq(
                            'FK_Vendor',
                            widget.vendorPK,
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
                List<TermAssetsRow> termDBVendorTermAssetsRowList =
                    snapshot.data!;
                return Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await TermAssetsTable().insert({
                                'FK_Vendor': widget.vendorPK,
                                'header': 'termHeader',
                                'term': 'Term',
                              });
                              setState(() => _model.requestCompleter = null);
                              await _model.waitForRequestCompleted();
                              FFAppState().update(() {});
                            },
                            child: Icon(
                              Icons.plus_one,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                          Text(
                            'Vendor Terms',
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
                          final termAssset =
                              termDBVendorTermAssetsRowList.toList();
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(termAssset.length,
                                (termAsssetIndex) {
                              final termAsssetItem =
                                  termAssset[termAsssetIndex];
                              return WrapTermRowWidget(
                                key: Key(
                                    'Key58m_${termAsssetIndex}_of_${termAssset.length}'),
                                termHeadline: termAsssetItem.header,
                                term: termAsssetItem.term,
                                isVisible: termAsssetItem.hide,
                                onUpdate: (header, term) async {
                                  await TermAssetsTable().update(
                                    data: {
                                      'term': term,
                                      'header': header,
                                    },
                                    matchingRows: (rows) => rows.eq(
                                      'PK_TermAssets',
                                      termAsssetItem.pKTermAssets,
                                    ),
                                  );
                                  setState(
                                      () => _model.requestCompleter = null);
                                  await _model.waitForRequestCompleted();
                                },
                                onDelete: () async {
                                  await TermAssetsTable().delete(
                                    matchingRows: (rows) => rows.eq(
                                      'PK_TermAssets',
                                      termAsssetItem.pKTermAssets,
                                    ),
                                  );
                                  setState(
                                      () => _model.requestCompleter = null);
                                  await _model.waitForRequestCompleted();
                                  FFAppState().update(() {});
                                },
                                onHideToggle: () async {
                                  await TermAssetsTable().update(
                                    data: {
                                      'hide': !termAsssetItem.hide,
                                    },
                                    matchingRows: (rows) => rows.eq(
                                      'PK_TermAssets',
                                      termAsssetItem.pKTermAssets,
                                    ),
                                  );
                                  setState(
                                      () => _model.requestCompleter = null);
                                  await _model.waitForRequestCompleted();
                                  FFAppState().update(() {});
                                },
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
    );
  }
}
