import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listing/wrap_faq_row/wrap_faq_row_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'listing_f_a_qs_model.dart';
export 'listing_f_a_qs_model.dart';

class ListingFAQsWidget extends StatefulWidget {
  const ListingFAQsWidget({
    super.key,
    required this.venkdorPK,
    required this.venuePK,
  });

  final int? venkdorPK;
  final int? venuePK;

  @override
  State<ListingFAQsWidget> createState() => _ListingFAQsWidgetState();
}

class _ListingFAQsWidgetState extends State<ListingFAQsWidget> {
  late ListingFAQsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListingFAQsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        decoration: BoxDecoration(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                        'FAQs',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
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
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FutureBuilder<List<FaqAssetsRow>>(
                  future: (_model.requestCompleter ??=
                          Completer<List<FaqAssetsRow>>()
                            ..complete(FaqAssetsTable().queryRows(
                              queryFn: (q) => q.eq(
                                'FK_Vendor',
                                widget.venkdorPK,
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
                    List<FaqAssetsRow> faqDBFetchVendorFaqAssetsRowList =
                        snapshot.data!;
                    return Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await FaqAssetsTable().insert({
                                  'FK_Vendor': widget.venkdorPK,
                                  'question': 'noQYet',
                                  'answer': '42',
                                });
                                setState(() => _model.requestCompleter = null);
                                await _model.waitForRequestCompleted();
                                FFAppState().update(() {});
                              },
                              child: Icon(
                                Icons.plus_one,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              final vendorFaq =
                                  faqDBFetchVendorFaqAssetsRowList.toList();
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(vendorFaq.length,
                                    (vendorFaqIndex) {
                                  final vendorFaqItem =
                                      vendorFaq[vendorFaqIndex];
                                  return WrapFaqRowWidget(
                                    key: Key(
                                        'Keybgx_${vendorFaqIndex}_of_${vendorFaq.length}'),
                                    question: vendorFaqItem.question,
                                    answer: vendorFaqItem.answer,
                                    hide: vendorFaqItem.hide,
                                    onUpdate: (question, answer) async {
                                      await FaqAssetsTable().update(
                                        data: {
                                          'question': question,
                                          'answer': answer,
                                        },
                                        matchingRows: (rows) => rows.eq(
                                          'PK_FaqAssets',
                                          vendorFaqItem.pKFaqAssets,
                                        ),
                                      );
                                      setState(
                                          () => _model.requestCompleter = null);
                                      await _model.waitForRequestCompleted();
                                    },
                                    onDelete: () async {
                                      await FaqAssetsTable().delete(
                                        matchingRows: (rows) => rows.eq(
                                          'PK_FaqAssets',
                                          vendorFaqItem.pKFaqAssets,
                                        ),
                                      );
                                      setState(
                                          () => _model.requestCompleter = null);
                                      await _model.waitForRequestCompleted();
                                      setState(() {});
                                    },
                                    onHideToggle: () async {
                                      await FaqAssetsTable().update(
                                        data: {
                                          'hide': !vendorFaqItem.hide,
                                        },
                                        matchingRows: (rows) => rows.eq(
                                          'PK_FaqAssets',
                                          vendorFaqItem.pKFaqAssets,
                                        ),
                                      );
                                      setState(
                                          () => _model.requestCompleter = null);
                                      await _model.waitForRequestCompleted();
                                      setState(() {});
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
              ),
              Container(
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Can I add extra hours to my event beyond the listed duration?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Is there valet parking for guests?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Can I adjust my headcount once I have booked my event?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
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
      ),
    );
  }
}
