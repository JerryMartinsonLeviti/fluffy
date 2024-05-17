import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/message/message_user_chip/message_user_chip_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'message_component_model.dart';
export 'message_component_model.dart';

class MessageComponentWidget extends StatefulWidget {
  const MessageComponentWidget({
    super.key,
    required this.rmuRow,
  });

  final RmuViewRow? rmuRow;

  @override
  State<MessageComponentWidget> createState() => _MessageComponentWidgetState();
}

class _MessageComponentWidgetState extends State<MessageComponentWidget> {
  late MessageComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageComponentModel());

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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Wrap(
              spacing: 0.0,
              runSpacing: 0.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      wrapWithModel(
                        model: _model.messageUserChipModel,
                        updateCallback: () => setState(() {}),
                        updateOnChange: true,
                        child: MessageUserChipWidget(
                          userImageURL: widget.rmuRow!.photoUrl!,
                          userFirstName: valueOrDefault<String>(
                            widget.rmuRow?.firstName,
                            'noFirst',
                          ),
                          userSecondName: valueOrDefault<String>(
                            widget.rmuRow?.lastName,
                            'noLast',
                          ),
                          userTitle: valueOrDefault<String>(
                            widget.rmuRow?.title,
                            'noTitle',
                          ),
                          userOrg: '4',
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.rmuRow?.messageText,
                          'noMessage',
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Text(
                  dateTimeFormat('M/d h:mm a', widget.rmuRow!.createdAt!),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'ROOM',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  widget.rmuRow!.pKRooms!.toString(),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).alternate,
          ),
        ],
      ),
    );
  }
}
