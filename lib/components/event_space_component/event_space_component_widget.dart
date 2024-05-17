import '/backend/supabase/supabase.dart';
import '/components/event_space_card_component/event_space_card_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'event_space_component_model.dart';
export 'event_space_component_model.dart';

class EventSpaceComponentWidget extends StatefulWidget {
  const EventSpaceComponentWidget({
    super.key,
    required this.functionSpaceRows,
  });

  final List<FunctionSpacesRow>? functionSpaceRows;

  @override
  State<EventSpaceComponentWidget> createState() =>
      _EventSpaceComponentWidgetState();
}

class _EventSpaceComponentWidgetState extends State<EventSpaceComponentWidget> {
  late EventSpaceComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventSpaceComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(130.0, 10.0, 0.0, 0.0),
            child: Text(
              'Event Spaces',
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 20.0),
          child: Container(
            width: 767.0,
            height: 3.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent3,
            ),
          ),
        ),
        Builder(
          builder: (context) {
            final functionSpaceIdx = widget.functionSpaceRows!.toList();
            return Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: List.generate(functionSpaceIdx.length,
                  (functionSpaceIdxIndex) {
                final functionSpaceIdxItem =
                    functionSpaceIdx[functionSpaceIdxIndex];
                return EventSpaceCardComponentWidget(
                  key: Key(
                      'Keydri_${functionSpaceIdxIndex}_of_${functionSpaceIdx.length}'),
                  functionSpaceRow: functionSpaceIdxItem,
                );
              }),
            );
          },
        ),
      ],
    );
  }
}
