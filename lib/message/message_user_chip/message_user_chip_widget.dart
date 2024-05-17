import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:octo_image/octo_image.dart';
import 'message_user_chip_model.dart';
export 'message_user_chip_model.dart';

class MessageUserChipWidget extends StatefulWidget {
  const MessageUserChipWidget({
    super.key,
    required this.userImageURL,
    required this.userFirstName,
    required this.userSecondName,
    required this.userTitle,
    required this.userOrg,
  });

  final String? userImageURL;
  final String? userFirstName;
  final String? userSecondName;
  final String? userTitle;
  final String? userOrg;

  @override
  State<MessageUserChipWidget> createState() => _MessageUserChipWidgetState();
}

class _MessageUserChipWidgetState extends State<MessageUserChipWidget> {
  late MessageUserChipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageUserChipModel());

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
      constraints: const BoxConstraints(
        maxWidth: 190.0,
      ),
      decoration: const BoxDecoration(),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: OctoImage(
                  placeholderBuilder: (_) => const SizedBox.expand(
                    child: Image(
                      image: BlurHashImage('loading'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  image: NetworkImage(
                    widget.userImageURL!,
                  ),
                  width: 44.0,
                  height: 44.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              constraints: const BoxConstraints(
                maxWidth: 170.0,
              ),
              decoration: const BoxDecoration(),
              child: Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  Text(
                    widget.userFirstName!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    widget.userSecondName!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                        ),
                  ),
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
                        widget.userTitle!,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                  Text(
                    widget.userOrg!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
