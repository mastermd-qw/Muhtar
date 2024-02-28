import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecentChosenResturantsHailRecord extends FirestoreRecord {
  RecentChosenResturantsHailRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ResturantImage" field.
  String? _resturantImage;
  String get resturantImage => _resturantImage ?? '';
  bool hasResturantImage() => _resturantImage != null;

  // "ResturantName" field.
  String? _resturantName;
  String get resturantName => _resturantName ?? '';
  bool hasResturantName() => _resturantName != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "userImage" field.
  String? _userImage;
  String get userImage => _userImage ?? '';
  bool hasUserImage() => _userImage != null;

  void _initializeFields() {
    _resturantImage = snapshotData['ResturantImage'] as String?;
    _resturantName = snapshotData['ResturantName'] as String?;
    _username = snapshotData['username'] as String?;
    _userImage = snapshotData['userImage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RecentChosenResturantsHail');

  static Stream<RecentChosenResturantsHailRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => RecentChosenResturantsHailRecord.fromSnapshot(s));

  static Future<RecentChosenResturantsHailRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RecentChosenResturantsHailRecord.fromSnapshot(s));

  static RecentChosenResturantsHailRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      RecentChosenResturantsHailRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecentChosenResturantsHailRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecentChosenResturantsHailRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecentChosenResturantsHailRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecentChosenResturantsHailRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecentChosenResturantsHailRecordData({
  String? resturantImage,
  String? resturantName,
  String? username,
  String? userImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ResturantImage': resturantImage,
      'ResturantName': resturantName,
      'username': username,
      'userImage': userImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecentChosenResturantsHailRecordDocumentEquality
    implements Equality<RecentChosenResturantsHailRecord> {
  const RecentChosenResturantsHailRecordDocumentEquality();

  @override
  bool equals(RecentChosenResturantsHailRecord? e1,
      RecentChosenResturantsHailRecord? e2) {
    return e1?.resturantImage == e2?.resturantImage &&
        e1?.resturantName == e2?.resturantName &&
        e1?.username == e2?.username &&
        e1?.userImage == e2?.userImage;
  }

  @override
  int hash(RecentChosenResturantsHailRecord? e) => const ListEquality()
      .hash([e?.resturantImage, e?.resturantName, e?.username, e?.userImage]);

  @override
  bool isValidKey(Object? o) => o is RecentChosenResturantsHailRecord;
}
