import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResenasRecord extends FirestoreRecord {
  ResenasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Comentario" field.
  String? _comentario;
  String get comentario => _comentario ?? '';
  bool hasComentario() => _comentario != null;

  // "Usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "FechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "Habilitado" field.
  bool? _habilitado;
  bool get habilitado => _habilitado ?? false;
  bool hasHabilitado() => _habilitado != null;

  // "Puntuacion" field.
  String? _puntuacion;
  String get puntuacion => _puntuacion ?? '';
  bool hasPuntuacion() => _puntuacion != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  void _initializeFields() {
    _comentario = snapshotData['Comentario'] as String?;
    _usuario = snapshotData['Usuario'] as DocumentReference?;
    _fechaCreacion = snapshotData['FechaCreacion'] as DateTime?;
    _habilitado = snapshotData['Habilitado'] as bool?;
    _puntuacion = snapshotData['Puntuacion'] as String?;
    _nombre = snapshotData['Nombre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Resenas');

  static Stream<ResenasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResenasRecord.fromSnapshot(s));

  static Future<ResenasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResenasRecord.fromSnapshot(s));

  static ResenasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResenasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResenasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResenasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResenasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResenasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResenasRecordData({
  String? comentario,
  DocumentReference? usuario,
  DateTime? fechaCreacion,
  bool? habilitado,
  String? puntuacion,
  String? nombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Comentario': comentario,
      'Usuario': usuario,
      'FechaCreacion': fechaCreacion,
      'Habilitado': habilitado,
      'Puntuacion': puntuacion,
      'Nombre': nombre,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResenasRecordDocumentEquality implements Equality<ResenasRecord> {
  const ResenasRecordDocumentEquality();

  @override
  bool equals(ResenasRecord? e1, ResenasRecord? e2) {
    return e1?.comentario == e2?.comentario &&
        e1?.usuario == e2?.usuario &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.habilitado == e2?.habilitado &&
        e1?.puntuacion == e2?.puntuacion &&
        e1?.nombre == e2?.nombre;
  }

  @override
  int hash(ResenasRecord? e) => const ListEquality().hash([
        e?.comentario,
        e?.usuario,
        e?.fechaCreacion,
        e?.habilitado,
        e?.puntuacion,
        e?.nombre
      ]);

  @override
  bool isValidKey(Object? o) => o is ResenasRecord;
}
