import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_asset_folder_model.dart';
export 'icon_asset_folder_model.dart';

class IconAssetFolderWidget extends StatefulWidget {
  const IconAssetFolderWidget({super.key});

  @override
  State<IconAssetFolderWidget> createState() => _IconAssetFolderWidgetState();
}

class _IconAssetFolderWidgetState extends State<IconAssetFolderWidget> {
  late IconAssetFolderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconAssetFolderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FaIcon(
      FontAwesomeIcons.briefcase,
      color: Color(0xFF2A208F),
      size: 50.0,
    );
  }
}
