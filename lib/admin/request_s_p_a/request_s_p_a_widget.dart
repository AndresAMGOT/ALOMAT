import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'request_s_p_a_model.dart';
export 'request_s_p_a_model.dart';

class RequestSPAWidget extends StatefulWidget {
  const RequestSPAWidget({super.key});

  @override
  State<RequestSPAWidget> createState() => _RequestSPAWidgetState();
}

class _RequestSPAWidgetState extends State<RequestSPAWidget> {
  late RequestSPAModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequestSPAModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<SolicitudEventoPorAplicanteRecord>>(
      stream: querySolicitudEventoPorAplicanteRecord(
        queryBuilder: (solicitudEventoPorAplicanteRecord) =>
            solicitudEventoPorAplicanteRecord
                .where(
                  'IsActived',
                  isEqualTo: false,
                )
                .where(
                  'EstaCompletado',
                  isEqualTo: true,
                )
                .orderBy('FechaEvento', descending: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: const Color(0xFF00070F),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<SolicitudEventoPorAplicanteRecord>
            requestSPASolicitudEventoPorAplicanteRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFF00070F),
            drawer: Drawer(
              elevation: 16.0,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (scaffoldKey.currentState!.isDrawerOpen ||
                                scaffoldKey.currentState!.isEndDrawerOpen) {
                              Navigator.pop(context);
                            }
                          },
                          child: Icon(
                            Icons.chevron_left,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AuthUserStreamWidget(
                          builder: (context) => Container(
                            width: 75.0,
                            height: 75.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              currentUserPhoto,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AuthUserStreamWidget(
                          builder: (context) => Text(
                            currentUserDisplayName,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Source Sans 3',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        currentUserEmail,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.person,
                          ),
                          title: Text(
                            'Perfil',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          dense: false,
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('HomePage');
                          },
                          child: ListTile(
                            leading: const Icon(
                              Icons.home,
                            ),
                            title: Text(
                              'Inicio',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            dense: false,
                          ),
                        ),
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isUser, false) ==
                            true)
                          AuthUserStreamWidget(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Step1');
                              },
                              child: ListTile(
                                leading: const Icon(
                                  Icons.event_note,
                                ),
                                title: Text(
                                  'Planificar evento',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                dense: false,
                              ),
                            ),
                          ),
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isAdmin, false) ==
                            true)
                          AuthUserStreamWidget(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('AdministradorInventario');
                              },
                              child: ListTile(
                                leading: const Icon(
                                  Icons.add_shopping_cart,
                                ),
                                title: Text(
                                  'Inventario',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                dense: false,
                              ),
                            ),
                          ),
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isAdmin, false) ==
                            true)
                          AuthUserStreamWidget(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('RequestSPA');
                              },
                              child: ListTile(
                                leading: const Icon(
                                  Icons.event_rounded,
                                ),
                                title: Text(
                                  'Solicitudes',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                dense: false,
                              ),
                            ),
                          ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('Resenas');
                          },
                          child: ListTile(
                            leading: const Icon(
                              Icons.star_rounded,
                            ),
                            title: Text(
                              'Reseñas',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            dense: false,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            context.goNamedAuth('Login', context.mounted);
                          },
                          child: ListTile(
                            leading: const Icon(
                              Icons.login_rounded,
                            ),
                            title: Text(
                              'Cerrar sesión',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            dense: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              backgroundColor: const Color(0xFF00070F),
              automaticallyImplyLeading: true,
              actions: const [],
              centerTitle: true,
              elevation: 4.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: const Color(0xFFBF9E75),
                            borderRadius: 20.0,
                            borderWidth: 2.0,
                            buttonSize: 40.0,
                            fillColor: const Color(0xFFF3E2CE),
                            icon: Icon(
                              Icons.keyboard_return,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 80.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFF00070F),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Solicitud de Eventos',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Source Sans 3',
                                      color: const Color(0xFFFFE1AF),
                                      fontSize: 25.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            child: Builder(
                              builder: (context) {
                                final solicitudPorApplicatePRM =
                                    requestSPASolicitudEventoPorAplicanteRecordList
                                        .toList();

                                return FlutterFlowDataTable<
                                    SolicitudEventoPorAplicanteRecord>(
                                  controller:
                                      _model.paginatedDataTableController,
                                  data: solicitudPorApplicatePRM,
                                  columnsBuilder: (onSortChanged) => [
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'Fecha',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'Tipo Evento',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'Dirección',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'Cliente',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'Detalle',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                  dataRowBuilder: (solicitudPorApplicatePRMItem,
                                          solicitudPorApplicatePRMIndex,
                                          selected,
                                          onSelectChanged) =>
                                      DataRow(
                                    color: WidgetStateProperty.all(
                                      solicitudPorApplicatePRMIndex % 2 == 0
                                          ? const Color(0xFFF3E2CE)
                                          : const Color(0xDAF3E2CE),
                                    ),
                                    cells: [
                                      Text(
                                        solicitudPorApplicatePRMItem
                                            .fechaEvento,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 11.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        solicitudPorApplicatePRMItem
                                            .tipoDeEvento,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 11.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        solicitudPorApplicatePRMItem
                                            .direccionEvento,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 11.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        solicitudPorApplicatePRMItem.nombre,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 11.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'ProductoPorAplicacionUI',
                                                    queryParameters: {
                                                      'prmSolicitudPorApplicant':
                                                          serializeParam(
                                                        solicitudPorApplicatePRMItem,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'prmSolicitudPorApplicant':
                                                          solicitudPorApplicatePRMItem,
                                                    },
                                                  );
                                                },
                                                child: Icon(
                                                  key: ValueKey(
                                                      solicitudPorApplicatePRMItem
                                                          .reference.id),
                                                  Icons.remove_red_eye,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ].map((c) => DataCell(c)).toList(),
                                  ),
                                  paginated: true,
                                  selectable: false,
                                  hidePaginator: false,
                                  showFirstLastButtons: true,
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.0,
                                  columnSpacing: 10.0,
                                  headingRowColor: const Color(0xFFBF9E75),
                                  borderRadius: BorderRadius.circular(8.0),
                                  addHorizontalDivider: true,
                                  addTopAndBottomDivider: false,
                                  hideDefaultHorizontalDivider: false,
                                  horizontalDividerColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  horizontalDividerThickness: 1.0,
                                  addVerticalDivider: false,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
