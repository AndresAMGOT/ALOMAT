import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'actualizar_inventario_widget.dart' show ActualizarInventarioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActualizarInventarioModel
    extends FlutterFlowModel<ActualizarInventarioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtUPCode widget.
  FocusNode? txtUPCodeFocusNode;
  TextEditingController? txtUPCodeTextController;
  String? Function(BuildContext, String?)? txtUPCodeTextControllerValidator;
  // State field(s) for txtUPNameProduct widget.
  FocusNode? txtUPNameProductFocusNode;
  TextEditingController? txtUPNameProductTextController;
  String? Function(BuildContext, String?)?
      txtUPNameProductTextControllerValidator;
  // State field(s) for txtUPDescription widget.
  FocusNode? txtUPDescriptionFocusNode;
  TextEditingController? txtUPDescriptionTextController;
  String? Function(BuildContext, String?)?
      txtUPDescriptionTextControllerValidator;
  // State field(s) for dbUPCategoria widget.
  String? dbUPCategoriaValue;
  FormFieldController<String>? dbUPCategoriaValueController;
  // State field(s) for txtUPPrecio widget.
  FocusNode? txtUPPrecioFocusNode;
  TextEditingController? txtUPPrecioTextController;
  String? Function(BuildContext, String?)? txtUPPrecioTextControllerValidator;
  // State field(s) for txtUPCantidad widget.
  FocusNode? txtUPCantidadFocusNode;
  TextEditingController? txtUPCantidadTextController;
  String? Function(BuildContext, String?)? txtUPCantidadTextControllerValidator;
  // State field(s) for txtUPColor widget.
  FocusNode? txtUPColorFocusNode;
  TextEditingController? txtUPColorTextController;
  String? Function(BuildContext, String?)? txtUPColorTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtUPCodeFocusNode?.dispose();
    txtUPCodeTextController?.dispose();

    txtUPNameProductFocusNode?.dispose();
    txtUPNameProductTextController?.dispose();

    txtUPDescriptionFocusNode?.dispose();
    txtUPDescriptionTextController?.dispose();

    txtUPPrecioFocusNode?.dispose();
    txtUPPrecioTextController?.dispose();

    txtUPCantidadFocusNode?.dispose();
    txtUPCantidadTextController?.dispose();

    txtUPColorFocusNode?.dispose();
    txtUPColorTextController?.dispose();
  }
}
