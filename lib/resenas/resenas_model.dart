import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'resenas_widget.dart' show ResenasWidget;
import 'package:flutter/material.dart';

class ResenasModel extends FlutterFlowModel<ResenasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtComentario widget.
  FocusNode? txtComentarioFocusNode;
  TextEditingController? txtComentarioTextController;
  String? Function(BuildContext, String?)? txtComentarioTextControllerValidator;
  // State field(s) for DDCalificacion widget.
  String? dDCalificacionValue;
  FormFieldController<String>? dDCalificacionValueController;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ResenasRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtComentarioFocusNode?.dispose();
    txtComentarioTextController?.dispose();
  }
}
