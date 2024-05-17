import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/message/chat_room_participants/chat_room_participants_widget.dart';
import '/message/message_by_date_listview/message_by_date_listview_widget.dart';
import '/message/message_by_room_listview/message_by_room_listview_widget.dart';
import 'package:flutter/material.dart';
import 'message_box_component_model.dart';
export 'message_box_component_model.dart';

class MessageBoxComponentWidget extends StatefulWidget {
  const MessageBoxComponentWidget({
    super.key,
    required this.bigTableRow,
    required this.roomPK,
    bool? showByRoom,
  }) : showByRoom = showByRoom ?? true;

  final BigTableRow? bigTableRow;
  final int? roomPK;
  final bool showByRoom;

  @override
  State<MessageBoxComponentWidget> createState() =>
      _MessageBoxComponentWidgetState();
}

class _MessageBoxComponentWidgetState extends State<MessageBoxComponentWidget> {
  late MessageBoxComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageBoxComponentModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
      width: 720.0,
      height: double.infinity,
      constraints: const BoxConstraints(
        maxHeight: 750.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            constraints: const BoxConstraints(
              maxWidth: 0.0,
              maxHeight: 0.0,
            ),
            decoration: const BoxDecoration(),
          ),
          Container(
            width: 0.0,
            height: 0.0,
            decoration: const BoxDecoration(),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Wrap(
                spacing: 0.0,
                runSpacing: 0.0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  Text(
                    'Room #${widget.bigTableRow?.pKRooms?.toString()} ${widget.bigTableRow?.roomName}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Text(
                  'Collaborator Chat',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  wrapWithModel(
                    model: _model.chatRoomParticipantsModel,
                    updateCallback: () => setState(() {}),
                    updateOnChange: true,
                    child: ChatRoomParticipantsWidget(
                      roomPK: widget.bigTableRow!.pKRooms!,
                    ),
                  ),
                  if ((widget.bigTableRow != null) && widget.showByRoom)
                    Container(
                      width: 700.0,
                      height: 350.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                      ),
                      child: wrapWithModel(
                        model: _model.messageByRoomListviewModel,
                        updateCallback: () => setState(() {}),
                        updateOnChange: true,
                        child: MessageByRoomListviewWidget(
                          roomPK: widget.bigTableRow!.pKRooms!,
                        ),
                      ),
                    ),
                  if (widget.showByRoom == false)
                    Container(
                      width: 700.0,
                      height: 350.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Visibility(
                        visible: widget.showByRoom == false,
                        child: wrapWithModel(
                          model: _model.messageByDateListviewModel,
                          updateCallback: () => setState(() {}),
                          child: MessageByDateListviewWidget(
                            roomPK: widget.roomPK!,
                            onSelectedRoom: (selectedRoomPK) async {},
                          ),
                        ),
                      ),
                    ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).accent4,
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            onFieldSubmitted: (_) async {
                              await MessagesTable().insert({
                                'messageText': _model.textController.text,
                                'FK_UserInfo': widget.bigTableRow?.pKUserInfos,
                                'FK_Room': widget.bigTableRow?.pKRooms,
                              });
                            },
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .customColor1,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Compose new message here...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.add_a_photo,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        Icons.attach_file,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        Icons.send,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ]
                        .divide(const SizedBox(width: 20.0))
                        .around(const SizedBox(width: 20.0)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
