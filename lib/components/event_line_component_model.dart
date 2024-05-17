import '/backend/supabase/supabase.dart';
import '/components/user_chip/user_chip_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'event_line_component_widget.dart' show EventLineComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventLineComponentModel
    extends FlutterFlowModel<EventLineComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for UserChip component.
  late UserChipModel userChipModel;

  @override
  void initState(BuildContext context) {
    userChipModel = createModel(context, () => UserChipModel());
  }

  @override
  void dispose() {
    userChipModel.dispose();
  }
}
