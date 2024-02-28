import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResturantImagesNorthernBordersRecord extends FirestoreRecord {
  ResturantImagesNorthernBordersRecord._(
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
      FirebaseFirestore.instance.collection('ResturantImagesNorthernBorders');

  static Stream<ResturantImagesNorthernBordersRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => ResturantImagesNorthernBordersRecord.fromSnapshot(s));

  static Future<ResturantImagesNorthernBordersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref
          .get()
          .then((s) => ResturantImagesNorthernBordersRecord.fromSnapshot(s));

  static ResturantImagesNorthernBordersRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      ResturantImagesNorthernBordersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResturantImagesNorthernBordersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResturantImagesNorthernBordersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResturantImagesNorthernBordersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResturantImagesNorthernBordersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResturantImagesNorthernBordersRecordData({
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

class ResturantImagesNorthernBordersRecordDocumentEquality
    implements Equality<ResturantImagesNorthernBordersRecord> {
  const ResturantImagesNorthernBordersRecordDocumentEquality();

  @override
  bool equals(ResturantImagesNorthernBordersRecord? e1,
      ResturantImagesNorthernBordersRecord? e2) {
    return e1?.image == e2?.image && e1?.resturantname == e2?.resturantname;
  }

  @override
  int hash(ResturantImagesNorthernBordersRecord? e) =>
      const ListEquality().hash([e?.image, e?.resturantname]);

  @override
  bool isValidKey(Object? o) => o is ResturantImagesNorthernBordersRecord;
}
