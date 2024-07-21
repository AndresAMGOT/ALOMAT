import '/flutter_flow/flutter_flow_util.dart';
import 'step4_widget.dart' show Step4Widget;
import 'package:flutter/material.dart';

class Step4Model extends FlutterFlowModel<Step4Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
