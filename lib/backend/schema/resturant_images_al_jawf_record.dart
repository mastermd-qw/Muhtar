import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResturantImagesAlJawfRecord extends FirestoreRecord {
  ResturantImagesAlJawfRecord._(
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
      FirebaseFirestore.instance.collection('ResturantImagesAlJawf');

  static Stream<ResturantImagesAlJawfRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ResturantImagesAlJawfRecord.fromSnapshot(s));

  static Future<ResturantImagesAlJawfRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ResturantImagesAlJawfRecord.fromSnapshot(s));

  static ResturantImagesAlJawfRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResturantImagesAlJawfRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResturantImagesAlJawfRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResturantImagesAlJawfRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResturantImagesAlJawfRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResturantImagesAlJawfRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResturantImagesAlJawfRecordData({
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

class ResturantImagesAlJawfRecordDocumentEquality
    implements Equality<ResturantImagesAlJawfRecord> {
  const ResturantImagesAlJawfRecordDocumentEquality();

  @override
  bool equals(
      ResturantImagesAlJawfRecord? e1, ResturantImagesAlJawfRecord? e2) {
    return e1?.image == e2?.image && e1?.resturantname == e2?.resturantname;
  }

  @override
  int hash(ResturantImagesAlJawfRecord? e) =>
      const ListEquality().hash([e?.image, e?.resturantname]);

  @override
  bool isValidKey(Object? o) => o is ResturantImagesAlJawfRecord;
}
