import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/actualizar_inventario_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'administrador_inventario_widget.dart'
    show AdministradorInventarioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdministradorInventarioModel
    extends FlutterFlowModel<AdministradorInventarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCode widget.
  FocusNode? txtCodeFocusNode;
  TextEditingController? txtCodeTextController;
  String? Function(BuildContext, String?)? txtCodeTextControllerValidator;
  // State field(s) for txtNameProduct widget.
  FocusNode? txtNameProductFocusNode;
  TextEditingController? txtNameProductTextController;
  String? Function(BuildContext, String?)?
      txtNameProductTextControllerValidator;
  // State field(s) for txtDescription widget.
  FocusNode? txtDescriptionFocusNode;
  TextEditingController? txtDescriptionTextController;
  String? Function(BuildContext, String?)?
      txtDescriptionTextControllerValidator;
  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadTextController;
  String? Function(BuildContext, String?)? txtCantidadTextControllerValidator;
  // State field(s) for txtColor widget.
  FocusNode? txtColorFocusNode;
  TextEditingController? txtColorTextController;
  String? Function(BuildContext, String?)? txtColorTextControllerValidator;
  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioTextController;
  String? Function(BuildContext, String?)? txtPrecioTextControllerValidator;
  // State field(s) for dbCategoria widget.
  String? dbCategoriaValue;
  FormFieldController<String>? dbCategoriaValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProductoRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCodeFocusNode?.dispose();
    txtCodeTextController?.dispose();

    txtNameProductFocusNode?.dispose();
    txtNameProductTextController?.dispose();

    txtDescriptionFocusNode?.dispose();
    txtDescriptionTextController?.dispose();

    txtCantidadFocusNode?.dispose();
    txtCantidadTextController?.dispose();

    txtColorFocusNode?.dispose();
    txtColorTextController?.dispose();

    txtPrecioFocusNode?.dispose();
    txtPrecioTextController?.dispose();
  }
}
