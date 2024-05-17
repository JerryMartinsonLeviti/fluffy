import '/backend/supabase/supabase.dart';
import '/components/venue_card_component/venue_card_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import '/planner_flow/search_bar/search_bar/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'step2_search_result_shopping_model.dart';
export 'step2_search_result_shopping_model.dart';

class Step2SearchResultShoppingWidget extends StatefulWidget {
  const Step2SearchResultShoppingWidget({super.key});

  @override
  State<Step2SearchResultShoppingWidget> createState() =>
      _Step2SearchResultShoppingWidgetState();
}

class _Step2SearchResultShoppingWidgetState
    extends State<Step2SearchResultShoppingWidget> {
  late Step2SearchResultShoppingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Step2SearchResultShoppingModel());

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
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.plannerAppBarComponentModel,
                  updateCallback: () => setState(() {}),
                  child: const PlannerAppBarComponentWidget(),
                ),
                wrapWithModel(
                  model: _model.searchBarModel,
                  updateCallback: () => setState(() {}),
                  child: const SearchBarWidget(),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 28.0, 0.0, 0.0),
                          child: Text(
                            'Select & Add Your Favorites To a Proposal',
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
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 28.0),
                      child: Text(
                        '< 1 2 3 4 5 6 7 8 ...11 >',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(100.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Sort By ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).accent1,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                FutureBuilder<List<VenuesRow>>(
                  future: VenuesTable().queryRows(
                    queryFn: (q) => q,
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
                    List<VenuesRow> containerVenuesRowList = snapshot.data!;
                    return Container(
                      decoration: const BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          final venueIndex = containerVenuesRowList.toList();
                          return Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: List.generate(venueIndex.length,
                                (venueIndexIndex) {
                              final venueIndexItem =
                                  venueIndex[venueIndexIndex];
                              return VenueCardComponentWidget(
                                key: Key(
                                    'Key0fk_${venueIndexIndex}_of_${venueIndex.length}'),
                                venueRow: venueIndexItem,
                              );
                            }),
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
