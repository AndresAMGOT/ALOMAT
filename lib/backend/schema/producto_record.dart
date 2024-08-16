import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductoRecord extends FirestoreRecord {
  ProductoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  bool hasCodigo() => _codigo != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "Precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "FechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "CreadoPor" field.
  DocumentReference? _creadoPor;
  DocumentReference? get creadoPor => _creadoPor;
  bool hasCreadoPor() => _creadoPor != null;

  // "Color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "Categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  void _initializeFields() {
    _codigo = snapshotData['Codigo'] as String?;
    _nombre = snapshotData['Nombre'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _cantidad = castToType<int>(snapshotData['Cantidad']);
    _precio = castToType<double>(snapshotData['Precio']);
    _imagen = snapshotData['Imagen'] as String?;
    _fechaCreacion = snapshotData['FechaCreacion'] as DateTime?;
    _creadoPor = snapshotData['CreadoPor'] as DocumentReference?;
    _color = snapshotData['Color'] as String?;
    _categoria = snapshotData['Categoria'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Producto');

  static Stream<ProductoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductoRecord.fromSnapshot(s));

  static Future<ProductoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductoRecord.fromSnapshot(s));

  static ProductoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductoRecordData({
  String? codigo,
  String? nombre,
  String? descripcion,
  int? cantidad,
  double? precio,
  String? imagen,
  DateTime? fechaCreacion,
  DocumentReference? creadoPor,
  String? color,
  String? categoria,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Codigo': codigo,
      'Nombre': nombre,
      'Descripcion': descripcion,
      'Cantidad': cantidad,
      'Precio': precio,
      'Imagen': imagen,
      'FechaCreacion': fechaCreacion,
      'CreadoPor': creadoPor,
      'Color': color,
      'Categoria': categoria,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductoRecordDocumentEquality implements Equality<ProductoRecord> {
  const ProductoRecordDocumentEquality();

  @override
  bool equals(ProductoRecord? e1, ProductoRecord? e2) {
    return e1?.codigo == e2?.codigo &&
        e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.cantidad == e2?.cantidad &&
        e1?.precio == e2?.precio &&
        e1?.imagen == e2?.imagen &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.creadoPor == e2?.creadoPor &&
        e1?.color == e2?.color &&
        e1?.categoria == e2?.categoria;
  }

  @override
  int hash(ProductoRecord? e) => const ListEquality().hash([
        e?.codigo,
        e?.nombre,
        e?.descripcion,
        e?.cantidad,
        e?.precio,
        e?.imagen,
        e?.fechaCreacion,
        e?.creadoPor,
        e?.color,
        e?.categoria
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductoRecord;
}
