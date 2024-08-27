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
import 'package:flutter/material.dart';
import 'actualizar_inventario_model.dart';
export 'actualizar_inventario_model.dart';

class ActualizarInventarioWidget extends StatefulWidget {
  const ActualizarInventarioWidget({
    super.key,
    required this.prmProducto,
  });

  final ProductoRecord? prmProducto;

  @override
  State<ActualizarInventarioWidget> createState() =>
      _ActualizarInventarioWidgetState();
}

class _ActualizarInventarioWidgetState
    extends State<ActualizarInventarioWidget> {
  late ActualizarInventarioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActualizarInventarioModel());

    _model.txtUPCodeTextController ??=
        TextEditingController(text: widget.prmProducto?.codigo);
    _model.txtUPCodeFocusNode ??= FocusNode();

    _model.txtUPNameProductTextController ??=
        TextEditingController(text: widget.prmProducto?.nombre);
    _model.txtUPNameProductFocusNode ??= FocusNode();

    _model.txtUPDescriptionTextController ??=
        TextEditingController(text: widget.prmProducto?.descripcion);
    _model.txtUPDescriptionFocusNode ??= FocusNode();

    _model.txtUPPrecioTextController ??=
        TextEditingController(text: widget.prmProducto?.precio.toString());
    _model.txtUPPrecioFocusNode ??= FocusNode();

    _model.txtUPCantidadTextController ??=
        TextEditingController(text: widget.prmProducto?.cantidad.toString());
    _model.txtUPCantidadFocusNode ??= FocusNode();

    _model.txtUPColorTextController ??=
        TextEditingController(text: widget.prmProducto?.color);
    _model.txtUPColorFocusNode ??= FocusNode();

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
      width: 331.0,
      height: 393.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    widget.prmProducto!.imagen,
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 16.0),
                  child: SizedBox(
                    width: 370.0,
                    child: TextFormField(
                      controller: _model.txtUPCodeTextController,
                      focusNode: _model.txtUPCodeFocusNode,
                      autofocus: true,
                      autofillHints: const [AutofillHints.email],
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Código',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFE8E6D7),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xBC00040F),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFBF9E75),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      keyboardType: TextInputType.emailAddress,
                      validator: _model.txtUPCodeTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 16.0),
                  child: SizedBox(
                    width: 370.0,
                    child: TextFormField(
                      controller: _model.txtUPNameProductTextController,
                      focusNode: _model.txtUPNameProductFocusNode,
                      autofocus: true,
                      autofillHints: const [AutofillHints.email],
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Nombre Producto',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFE8E6D7),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xBC00040F),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFBF9E75),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      keyboardType: TextInputType.emailAddress,
                      validator: _model.txtUPNameProductTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 16.0),
                  child: SizedBox(
                    width: 370.0,
                    child: TextFormField(
                      controller: _model.txtUPDescriptionTextController,
                      focusNode: _model.txtUPDescriptionFocusNode,
                      autofocus: true,
                      autofillHints: const [AutofillHints.email],
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Descripción',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFE8E6D7),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xBC00040F),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFBF9E75),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      keyboardType: TextInputType.emailAddress,
                      validator: _model.txtUPDescriptionTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 3.0),
                child: StreamBuilder<List<CategoriaProductosRecord>>(
                  stream: queryCategoriaProductosRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<CategoriaProductosRecord>
                        dbUPCategoriaCategoriaProductosRecordList =
                        snapshot.data!;

                    return FlutterFlowDropDown<String>(
                      controller: _model.dbUPCategoriaValueController ??=
                          FormFieldController<String>(
                        _model.dbUPCategoriaValue ??=
                            widget.prmProducto?.categoria,
                      ),
                      options: dbUPCategoriaCategoriaProductosRecordList
                          .map((e) => e.nombre)
                          .toList(),
                      onChanged: (val) =>
                          setState(() => _model.dbUPCategoriaValue = val),
                      width: 370.0,
                      height: 50.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                color: const Color(0xFFF1F4F8),
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Seleccione una categoria...',
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFFE8E6D7),
                        size: 24.0,
                      ),
                      fillColor: const Color(0xFFBF9E75),
                      elevation: 2.0,
                      borderColor: const Color(0xFFE8E6D7),
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 16.0),
                  child: SizedBox(
                    width: 370.0,
                    child: TextFormField(
                      controller: _model.txtUPPrecioTextController,
                      focusNode: _model.txtUPPrecioFocusNode,
                      autofocus: true,
                      autofillHints: const [AutofillHints.email],
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Precio',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFE8E6D7),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xBC00040F),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFBF9E75),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      keyboardType: TextInputType.emailAddress,
                      validator: _model.txtUPPrecioTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 16.0),
                  child: SizedBox(
                    width: 370.0,
                    child: TextFormField(
                      controller: _model.txtUPCantidadTextController,
                      focusNode: _model.txtUPCantidadFocusNode,
                      autofocus: true,
                      autofillHints: const [AutofillHints.email],
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Cantidad',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFE8E6D7),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xBC00040F),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFBF9E75),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      keyboardType: TextInputType.emailAddress,
                      validator: _model.txtUPCantidadTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 16.0),
                  child: SizedBox(
                    width: 370.0,
                    child: TextFormField(
                      controller: _model.txtUPColorTextController,
                      focusNode: _model.txtUPColorFocusNode,
                      autofocus: true,
                      autofillHints: const [AutofillHints.email],
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Color',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFE8E6D7),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xBC00040F),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFBF9E75),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      keyboardType: TextInputType.emailAddress,
                      validator: _model.txtUPColorTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).accent4,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: const Color(0xFFF3E2CE),
                  icon: Icon(
                    Icons.image_sharp,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    final selectedMedia = await selectMedia(
                      mediaSource: MediaSource.photoGallery,
                      multiImage: false,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      setState(() => _model.isDataUploading = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];

                      var downloadUrls = <String>[];
                      try {
                        selectedUploadedFiles = selectedMedia
                            .map((m) => FFUploadedFile(
                                  name: m.storagePath.split('/').last,
                                  bytes: m.bytes,
                                  height: m.dimensions?.height,
                                  width: m.dimensions?.width,
                                  blurHash: m.blurHash,
                                ))
                            .toList();

                        downloadUrls = (await Future.wait(
                          selectedMedia.map(
                            (m) async =>
                                await uploadData(m.storagePath, m.bytes),
                          ),
                        ))
                            .where((u) => u != null)
                            .map((u) => u!)
                            .toList();
                      } finally {
                        _model.isDataUploading = false;
                      }
                      if (selectedUploadedFiles.length ==
                              selectedMedia.length &&
                          downloadUrls.length == selectedMedia.length) {
                        setState(() {
                          _model.uploadedLocalFile =
                              selectedUploadedFiles.first;
                          _model.uploadedFileUrl = downloadUrls.first;
                        });
                      } else {
                        setState(() {});
                        return;
                      }
                    }
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    var confirmDialogResponse = await showDialog<bool>(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: const Text('¡Alerta!'),
                              content: const Text(
                                  'Esta a punto de actualizar el producto.¿Desea continuar?'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, false),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, true),
                                  child: const Text('Confirm'),
                                ),
                              ],
                            );
                          },
                        ) ??
                        false;
                    if (confirmDialogResponse) {
                      if ((_model.txtUPCodeTextController.text != '') &&
                          (_model.txtUPNameProductTextController.text !=
                                  '') &&
                          (_model.txtUPDescriptionTextController.text !=
                                  '') &&
                          (_model.txtUPCantidadTextController.text != '') &&
                          (_model.txtUPPrecioTextController.text != '') &&
                          (_model.dbUPCategoriaValue != null &&
                              _model.dbUPCategoriaValue != '') &&
                          (_model.txtUPColorTextController.text != '')) {
                        await widget.prmProducto!.reference
                            .update(createProductoRecordData(
                          codigo: _model.txtUPCodeTextController.text,
                          nombre: _model.txtUPNameProductTextController.text,
                          descripcion:
                              _model.txtUPDescriptionTextController.text,
                          cantidad: int.tryParse(
                              _model.txtUPCantidadTextController.text),
                          precio: double.tryParse(
                              _model.txtUPPrecioTextController.text),
                          imagen: _model.uploadedFileUrl,
                          fechaCreacion: getCurrentTimestamp,
                          categoria: _model.dbUPCategoriaValue,
                          creadoPor: currentUserReference,
                          color: _model.txtUPColorTextController.text,
                        ));
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              '¡Producto actualizado exitosamente!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor: const Color(0xFF00070F),
                          ),
                        );
                        setState(() {
                          _model.txtUPCodeTextController?.clear();
                          _model.txtUPNameProductTextController?.clear();
                          _model.txtUPDescriptionTextController?.clear();
                          _model.txtUPPrecioTextController?.clear();
                          _model.txtUPCantidadTextController?.clear();
                          _model.txtUPColorTextController?.clear();
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Producto actualizado satisfactoriamente',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor: const Color(0xFF4FD239),
                          ),
                        );

                        context.pushNamed('AdministradorInventario');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Los campos requeridos deben llenarse',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor: const Color(0xFFE4E916),
                          ),
                        );
                      }
                    }
                  },
                  text: 'Actualizar',
                  icon: const Icon(
                    Icons.browser_updated_rounded,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    width: 170.0,
                    height: 40.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFF3E2CE),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF00070F),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Color(0xFFBF9E75),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
