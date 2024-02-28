import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResturantImagesRiyadhRecord extends FirestoreRecord {
  ResturantImagesRiyadhRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Resturantname" field.
  String? _resturantname;
  String get resturantname => _resturantname ?? '';
  bool hasResturantname() => _resturantname != null;

  void _initializeFields() {
    _image = snapshotData['Image'] as String?;
    _resturantname = snapshotData['Resturantname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ResturantImagesRiyadh');

  static Stream<ResturantImagesRiyadhRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ResturantImagesRiyadhRecord.fromSnapshot(s));

  static Future<ResturantImagesRiyadhRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ResturantImagesRiyadhRecord.fromSnapshot(s));

  static ResturantImagesRiyadhRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResturantImagesRiyadhRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResturantImagesRiyadhRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResturantImagesRiyadhRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResturantImagesRiyadhRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResturantImagesRiyadhRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResturantImagesRiyadhRecordData({
  String? image,
  String? resturantname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Image': image,
      'Resturantname': resturantname,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResturantImagesRiyadhRecordDocumentEquality
    implements Equality<ResturantImagesRiyadhRecord> {
  const ResturantImagesRiyadhRecordDocumentEquality();

  @override
  bool equals(
      ResturantImagesRiyadhRecord? e1, ResturantImagesRiyadhRecord? e2) {
    return e1?.image == e2?.image && e1?.resturantname == e2?.resturantname;
  }

  @override
  int hash(ResturantImagesRiyadhRecord? e) =>
      const ListEquality().hash([e?.image, e?.resturantname]);

  @override
  bool isValidKey(Object? o) => o is ResturantImagesRiyadhRecord;
}
