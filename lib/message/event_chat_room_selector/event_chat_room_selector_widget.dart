import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/message/event_chat_chip/event_chat_chip_widget.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'event_chat_room_selector_model.dart';
export 'event_chat_room_selector_model.dart';

class EventChatRoomSelectorWidget extends StatefulWidget {
  const EventChatRoomSelectorWidget({
    super.key,
    required this.bigTableForOneEvent,
  });

  final List<BigTableRow>? bigTableForOneEvent;

  @override
  State<EventChatRoomSelectorWidget> createState() =>
      _EventChatRoomSelectorWidgetState();
}

class _EventChatRoomSelectorWidgetState
    extends State<EventChatRoomSelectorWidget> {
  late EventChatRoomSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventChatRoomSelectorModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
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
      decoration: const BoxDecoration(),
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: ExpandableNotifier(
          controller: _model.expandableExpandableController,
          child: ExpandablePanel(
            header: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                wrapWithModel(
                  model: _model.eventChatChipModel,
                  updateCallback: () => setState(() {}),
                  child: EventChatChipWidget(
                    bitTableEventRow: widget.bigTableForOneEvent!.first,
                  ),
                ),
              ],
            ),
            collapsed: Container(),
            expanded: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FlutterFlowRadioButton(
                  options: widget.bigTableForOneEvent!
                      .map((e) => valueOrDefault<String>(
                            e.roomName,
                            'noRoomName',
                          ))
                      .toList()
                      .toList(),
                  onChanged: (val) => setState(() {}),
                  controller: _model.radioButtonValueController ??=
                      FormFieldController<String>('Planner Chat'),
                  optionHeight: 32.0,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                  selectedTextStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                  buttonPosition: RadioButtonPosition.left,
                  direction: Axis.vertical,
                  radioButtonColor: FlutterFlowTheme.of(context).primary,
                  inactiveRadioButtonColor:
                      FlutterFlowTheme.of(context).secondaryText,
                  toggleable: false,
                  horizontalAlignment: WrapAlignment.start,
                  verticalAlignment: WrapCrossAlignment.start,
                ),
              ],
            ),
            theme: const ExpandableThemeData(
              tapHeaderToExpand: true,
              tapBodyToExpand: false,
              tapBodyToCollapse: false,
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              hasIcon: true,
              expandIcon: Icons.arrow_right,
              collapseIcon: Icons.arrow_drop_down,
            ),
          ),
        ),
      ),
    );
  }
}
