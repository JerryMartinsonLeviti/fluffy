import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'wrap_term_row_widget.dart' show WrapTermRowWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WrapTermRowModel extends FlutterFlowModel<WrapTermRowWidget> {
  ///  Local state fields for this component.

  bool noEdit = true;

  bool collapsed = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TermHeadlineTF widget.
  FocusNode? termHeadlineTFFocusNode;
  TextEditingController? termHeadlineTFTextController;
  String? Function(BuildContext, String?)?
      termHeadlineTFTextControllerValidator;
  // State field(s) for TerTF widget.
  FocusNode? terTFFocusNode;
  TextEditingController? terTFTextController;
  String? Function(BuildContext, String?)? terTFTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    termHeadlineTFFocusNode?.dispose();
    termHeadlineTFTextController?.dispose();

    terTFFocusNode?.dispose();
    terTFTextController?.dispose();
  }
}
