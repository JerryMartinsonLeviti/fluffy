import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'planner_app_bar_component_model.dart';
export 'planner_app_bar_component_model.dart';

class PlannerAppBarComponentWidget extends StatefulWidget {
  const PlannerAppBarComponentWidget({super.key});

  @override
  State<PlannerAppBarComponentWidget> createState() =>
      _PlannerAppBarComponentWidgetState();
}

class _PlannerAppBarComponentWidgetState
    extends State<PlannerAppBarComponentWidget> {
  late PlannerAppBarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlannerAppBarComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('SplashPage');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/planner-flow-i-i-3cona6/assets/i7w5u08iinav/SilverSpike_Logo_Version_2.png',
                  width: 140.0,
                  height: 50.0,
                  fit: BoxFit.contain,
                  alignment: Alignment(-1.0, 0.0),
                ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                icon: FaIcon(
                  FontAwesomeIcons.storeAlt,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 25.0,
                ),
                onPressed: () async {
                  context.pushNamed('MarketplaceFirstPage');
                },
              ),
              FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                icon: Icon(
                  Icons.favorite_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed('Step3_5-FavoritesPage');
                },
              ),
              FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                icon: Icon(
                  Icons.notifications_active_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 30.0,
                ),
                onPressed: () async {
                  _model.plannerRows = await PlannersTable().queryRows(
                    queryFn: (q) => q.eq(
                      'PK_Planners',
                      FFAppState().PKPlanner,
                    ),
                  );
                  _model.userInfoRows = await UserInfosTable().queryRows(
                    queryFn: (q) => q.eq(
                      'FK_Planner',
                      FFAppState().PKPlanner,
                    ),
                  );

                  context.pushNamed(
                    'MessagesByEvent',
                    queryParameters: {
                      'userInfoRow': serializeParam(
                        _model.userInfoRows?.first,
                        ParamType.SupabaseRow,
                      ),
                    }.withoutNulls,
                  );

                  setState(() {});
                },
              ),
              FlutterFlowIconButton(
                borderRadius: 0.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                icon: Icon(
                  Icons.dashboard,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed('PlannerDashboard');
                },
              ),
              FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.quiz,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 26.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ],
          ),
          Container(
            width: 50.0,
            height: 50.0,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/teams/bjcNcUcJFzipGWqoNchx/assets/wez2vnbwfphg/stock_organizer_image_(cropped).png',
              fit: BoxFit.cover,
            ),
          ),
        ].divide(SizedBox(width: 30.0)),
      ),
    );
  }
}
