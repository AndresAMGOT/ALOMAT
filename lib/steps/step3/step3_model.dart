import '/flutter_flow/flutter_flow_util.dart';
import 'step3_widget.dart' show Step3Widget;
import 'package:flutter/material.dart';

class Step3Model extends FlutterFlowModel<Step3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtTime widget.
  FocusNode? txtTimeFocusNode;
  TextEditingController? txtTimeTextController;
  String? Function(BuildContext, String?)? txtTimeTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtTimeFocusNode?.dispose();
    txtTimeTextController?.dispose();
  }
}
