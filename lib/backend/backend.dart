import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/users_record.dart';
import 'schema/resturant_images_record.dart';
import 'schema/leader_board_choosers_record.dart';
import 'schema/leader_board_receivers_record.dart';
import 'schema/resturant_images_riyadh_record.dart';
import 'schema/resturant_images_mecca_record.dart';
import 'schema/resturant_images_medina_record.dart';
import 'schema/resturant_images_eastern_province_record.dart';
import 'schema/resturant_images_aseer_record.dart';
import 'schema/resturant_images_qassim_record.dart';
import 'schema/resturant_images_hail_record.dart';
import 'schema/resturant_images_al_jawf_record.dart';
import 'schema/resturant_images_al_bahah_record.dart';
import 'schema/resturant_images_najran_record.dart';
import 'schema/resturant_images_jazan_record.dart';
import 'schema/resturant_images_northern_borders_record.dart';
import 'schema/recent_chosen_resturants_tabuk_record.dart';
import 'schema/recent_chosen_resturants_riyadh_record.dart';
import 'schema/recent_chosen_resturants_mecca_record.dart';
import 'schema/recent_chosen_resturants_medina_record.dart';
import 'schema/recent_chosen_resturants_eastern_province_record.dart';
import 'schema/recent_chosen_resturants_aseer_record.dart';
import 'schema/recent_chosen_resturants_qassim_record.dart';
import 'schema/recent_chosen_resturants_hail_record.dart';
import 'schema/recent_chosen_resturants_al_jawf_record.dart';
import 'schema/recent_chosen_resturants_al_bahah_record.dart';
import 'schema/recent_chosen_resturants_najran_record.dart';
import 'schema/recent_chosen_resturants_jazan_record.dart';
import 'schema/recent_chosen_resturants_northern_borders_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/users_record.dart';
export 'schema/resturant_images_record.dart';
export 'schema/leader_board_choosers_record.dart';
export 'schema/leader_board_receivers_record.dart';
export 'schema/resturant_images_riyadh_record.dart';
export 'schema/resturant_images_mecca_record.dart';
export 'schema/resturant_images_medina_record.dart';
export 'schema/resturant_images_eastern_province_record.dart';
export 'schema/resturant_images_aseer_record.dart';
export 'schema/resturant_images_qassim_record.dart';
export 'schema/resturant_images_hail_record.dart';
export 'schema/resturant_images_al_jawf_record.dart';
export 'schema/resturant_images_al_bahah_record.dart';
export 'schema/resturant_images_najran_record.dart';
export 'schema/resturant_images_jazan_record.dart';
export 'schema/resturant_images_northern_borders_record.dart';
export 'schema/recent_chosen_resturants_tabuk_record.dart';
export 'schema/recent_chosen_resturants_riyadh_record.dart';
export 'schema/recent_chosen_resturants_mecca_record.dart';
export 'schema/recent_chosen_resturants_medina_record.dart';
export 'schema/recent_chosen_resturants_eastern_province_record.dart';
export 'schema/recent_chosen_resturants_aseer_record.dart';
export 'schema/recent_chosen_resturants_qassim_record.dart';
export 'schema/recent_chosen_resturants_hail_record.dart';
export 'schema/recent_chosen_resturants_al_jawf_record.dart';
export 'schema/recent_chosen_resturants_al_bahah_record.dart';
export 'schema/recent_chosen_resturants_najran_record.dart';
export 'schema/recent_chosen_resturants_jazan_record.dart';
export 'schema/recent_chosen_resturants_northern_borders_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Future<int> queryUsersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UsersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UsersRecord>> queryUsersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UsersRecord>> queryUsersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResturantImagesRecords (as a Stream and as a Future).
Future<int> queryResturantImagesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturantImagesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturantImagesRecord>> queryResturantImagesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResturantImagesRecord.collection,
      ResturantImagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResturantImagesRecord>> queryResturantImagesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ResturantImagesRecord.collection,
      ResturantImagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query LeaderBoardChoosersRecords (as a Stream and as a Future).
Future<int> queryLeaderBoardChoosersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      LeaderBoardChoosersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<LeaderBoardChoosersRecord>> queryLeaderBoardChoosersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      LeaderBoardChoosersRecord.collection,
      LeaderBoardChoosersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<LeaderBoardChoosersRecord>> queryLeaderBoardChoosersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      LeaderBoardChoosersRecord.collection,
      LeaderBoardChoosersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query LeaderBoardReceiversRecords (as a Stream and as a Future).
Future<int> queryLeaderBoardReceiversRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      LeaderBoardReceiversRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<LeaderBoardReceiversRecord>> queryLeaderBoardReceiversRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      LeaderBoardReceiversRecord.collection,
      LeaderBoardReceiversRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<LeaderBoardReceiversRecord>> queryLeaderBoardReceiversRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      LeaderBoardReceiversRecord.collection,
      LeaderBoardReceiversRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResturantImagesRiyadhRecords (as a Stream and as a Future).
Future<int> queryResturantImagesRiyadhRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturantImagesRiyadhRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturantImagesRiyadhRecord>> queryResturantImagesRiyadhRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResturantImagesRiyadhRecord.collection,
      ResturantImagesRiyadhRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResturantImagesRiyadhRecord>> queryResturantImagesRiyadhRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ResturantImagesRiyadhRecord.collection,
      ResturantImagesRiyadhRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResturantImagesMeccaRecords (as a Stream and as a Future).
Future<int> queryResturantImagesMeccaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturantImagesMeccaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturantImagesMeccaRecord>> queryResturantImagesMeccaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResturantImagesMeccaRecord.collection,
      ResturantImagesMeccaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResturantImagesMeccaRecord>> queryResturantImagesMeccaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ResturantImagesMeccaRecord.collection,
      ResturantImagesMeccaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResturantImagesMedinaRecords (as a Stream and as a Future).
Future<int> queryResturantImagesMedinaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturantImagesMedinaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturantImagesMedinaRecord>> queryResturantImagesMedinaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResturantImagesMedinaRecord.collection,
      ResturantImagesMedinaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResturantImagesMedinaRecord>> queryResturantImagesMedinaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ResturantImagesMedinaRecord.collection,
      ResturantImagesMedinaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResturantImagesEasternProvinceRecords (as a Stream and as a Future).
Future<int> queryResturantImagesEasternProvinceRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturantImagesEasternProvinceRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturantImagesEasternProvinceRecord>>
    queryResturantImagesEasternProvinceRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          ResturantImagesEasternProvinceRecord.collection,
          ResturantImagesEasternProvinceRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<ResturantImagesEasternProvinceRecord>>
    queryResturantImagesEasternProvinceRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          ResturantImagesEasternProvinceRecord.collection,
          ResturantImagesEasternProvinceRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query ResturantImagesAseerRecords (as a Stream and as a Future).
Future<int> queryResturantImagesAseerRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturantImagesAseerRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturantImagesAseerRecord>> queryResturantImagesAseerRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResturantImagesAseerRecord.collection,
      ResturantImagesAseerRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResturantImagesAseerRecord>> queryResturantImagesAseerRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ResturantImagesAseerRecord.collection,
      ResturantImagesAseerRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResturantImagesQassimRecords (as a Stream and as a Future).
Future<int> queryResturantImagesQassimRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturantImagesQassimRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturantImagesQassimRecord>> queryResturantImagesQassimRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResturantImagesQassimRecord.collection,
      ResturantImagesQassimRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResturantImagesQassimRecord>> queryResturantImagesQassimRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ResturantImagesQassimRecord.collection,
      ResturantImagesQassimRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResturantImagesHailRecords (as a Stream and as a Future).
Future<int> queryResturantImagesHailRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturantImagesHailRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturantImagesHailRecord>> queryResturantImagesHailRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResturantImagesHailRecord.collection,
      ResturantImagesHailRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResturantImagesHailRecord>> queryResturantImagesHailRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ResturantImagesHailRecord.collection,
      ResturantImagesHailRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResturantImagesAlJawfRecords (as a Stream and as a Future).
Future<int> queryResturantImagesAlJawfRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturantImagesAlJawfRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturantImagesAlJawfRecord>> queryResturantImagesAlJawfRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResturantImagesAlJawfRecord.collection,
      ResturantImagesAlJawfRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResturantImagesAlJawfRecord>> queryResturantImagesAlJawfRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ResturantImagesAlJawfRecord.collection,
      ResturantImagesAlJawfRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResturantImagesAlBahahRecords (as a Stream and as a Future).
Future<int> queryResturantImagesAlBahahRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturantImagesAlBahahRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturantImagesAlBahahRecord>> queryResturantImagesAlBahahRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResturantImagesAlBahahRecord.collection,
      ResturantImagesAlBahahRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResturantImagesAlBahahRecord>>
    queryResturantImagesAlBahahRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          ResturantImagesAlBahahRecord.collection,
          ResturantImagesAlBahahRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query ResturantImagesNajranRecords (as a Stream and as a Future).
Future<int> queryResturantImagesNajranRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturantImagesNajranRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturantImagesNajranRecord>> queryResturantImagesNajranRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResturantImagesNajranRecord.collection,
      ResturantImagesNajranRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResturantImagesNajranRecord>> queryResturantImagesNajranRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ResturantImagesNajranRecord.collection,
      ResturantImagesNajranRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResturantImagesJazanRecords (as a Stream and as a Future).
Future<int> queryResturantImagesJazanRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturantImagesJazanRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturantImagesJazanRecord>> queryResturantImagesJazanRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResturantImagesJazanRecord.collection,
      ResturantImagesJazanRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResturantImagesJazanRecord>> queryResturantImagesJazanRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ResturantImagesJazanRecord.collection,
      ResturantImagesJazanRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResturantImagesNorthernBordersRecords (as a Stream and as a Future).
Future<int> queryResturantImagesNorthernBordersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturantImagesNorthernBordersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturantImagesNorthernBordersRecord>>
    queryResturantImagesNorthernBordersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          ResturantImagesNorthernBordersRecord.collection,
          ResturantImagesNorthernBordersRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<ResturantImagesNorthernBordersRecord>>
    queryResturantImagesNorthernBordersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          ResturantImagesNorthernBordersRecord.collection,
          ResturantImagesNorthernBordersRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query RecentChosenResturantsTabukRecords (as a Stream and as a Future).
Future<int> queryRecentChosenResturantsTabukRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RecentChosenResturantsTabukRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RecentChosenResturantsTabukRecord>>
    queryRecentChosenResturantsTabukRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          RecentChosenResturantsTabukRecord.collection,
          RecentChosenResturantsTabukRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<RecentChosenResturantsTabukRecord>>
    queryRecentChosenResturantsTabukRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          RecentChosenResturantsTabukRecord.collection,
          RecentChosenResturantsTabukRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query RecentChosenResturantsRiyadhRecords (as a Stream and as a Future).
Future<int> queryRecentChosenResturantsRiyadhRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RecentChosenResturantsRiyadhRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RecentChosenResturantsRiyadhRecord>>
    queryRecentChosenResturantsRiyadhRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          RecentChosenResturantsRiyadhRecord.collection,
          RecentChosenResturantsRiyadhRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<RecentChosenResturantsRiyadhRecord>>
    queryRecentChosenResturantsRiyadhRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          RecentChosenResturantsRiyadhRecord.collection,
          RecentChosenResturantsRiyadhRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query RecentChosenResturantsMeccaRecords (as a Stream and as a Future).
Future<int> queryRecentChosenResturantsMeccaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RecentChosenResturantsMeccaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RecentChosenResturantsMeccaRecord>>
    queryRecentChosenResturantsMeccaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          RecentChosenResturantsMeccaRecord.collection,
          RecentChosenResturantsMeccaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<RecentChosenResturantsMeccaRecord>>
    queryRecentChosenResturantsMeccaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          RecentChosenResturantsMeccaRecord.collection,
          RecentChosenResturantsMeccaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query RecentChosenResturantsMedinaRecords (as a Stream and as a Future).
Future<int> queryRecentChosenResturantsMedinaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RecentChosenResturantsMedinaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RecentChosenResturantsMedinaRecord>>
    queryRecentChosenResturantsMedinaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          RecentChosenResturantsMedinaRecord.collection,
          RecentChosenResturantsMedinaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<RecentChosenResturantsMedinaRecord>>
    queryRecentChosenResturantsMedinaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          RecentChosenResturantsMedinaRecord.collection,
          RecentChosenResturantsMedinaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query RecentChosenResturantsEasternProvinceRecords (as a Stream and as a Future).
Future<int> queryRecentChosenResturantsEasternProvinceRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RecentChosenResturantsEasternProvinceRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RecentChosenResturantsEasternProvinceRecord>>
    queryRecentChosenResturantsEasternProvinceRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          RecentChosenResturantsEasternProvinceRecord.collection,
          RecentChosenResturantsEasternProvinceRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<RecentChosenResturantsEasternProvinceRecord>>
    queryRecentChosenResturantsEasternProvinceRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          RecentChosenResturantsEasternProvinceRecord.collection,
          RecentChosenResturantsEasternProvinceRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query RecentChosenResturantsAseerRecords (as a Stream and as a Future).
Future<int> queryRecentChosenResturantsAseerRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RecentChosenResturantsAseerRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RecentChosenResturantsAseerRecord>>
    queryRecentChosenResturantsAseerRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          RecentChosenResturantsAseerRecord.collection,
          RecentChosenResturantsAseerRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<RecentChosenResturantsAseerRecord>>
    queryRecentChosenResturantsAseerRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          RecentChosenResturantsAseerRecord.collection,
          RecentChosenResturantsAseerRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query RecentChosenResturantsQassimRecords (as a Stream and as a Future).
Future<int> queryRecentChosenResturantsQassimRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RecentChosenResturantsQassimRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RecentChosenResturantsQassimRecord>>
    queryRecentChosenResturantsQassimRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          RecentChosenResturantsQassimRecord.collection,
          RecentChosenResturantsQassimRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<RecentChosenResturantsQassimRecord>>
    queryRecentChosenResturantsQassimRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          RecentChosenResturantsQassimRecord.collection,
          RecentChosenResturantsQassimRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query RecentChosenResturantsHailRecords (as a Stream and as a Future).
Future<int> queryRecentChosenResturantsHailRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RecentChosenResturantsHailRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RecentChosenResturantsHailRecord>>
    queryRecentChosenResturantsHailRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          RecentChosenResturantsHailRecord.collection,
          RecentChosenResturantsHailRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<RecentChosenResturantsHailRecord>>
    queryRecentChosenResturantsHailRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          RecentChosenResturantsHailRecord.collection,
          RecentChosenResturantsHailRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query RecentChosenResturantsAlJawfRecords (as a Stream and as a Future).
Future<int> queryRecentChosenResturantsAlJawfRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RecentChosenResturantsAlJawfRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RecentChosenResturantsAlJawfRecord>>
    queryRecentChosenResturantsAlJawfRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          RecentChosenResturantsAlJawfRecord.collection,
          RecentChosenResturantsAlJawfRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<RecentChosenResturantsAlJawfRecord>>
    queryRecentChosenResturantsAlJawfRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          RecentChosenResturantsAlJawfRecord.collection,
          RecentChosenResturantsAlJawfRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query RecentChosenResturantsAlBahahRecords (as a Stream and as a Future).
Future<int> queryRecentChosenResturantsAlBahahRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RecentChosenResturantsAlBahahRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RecentChosenResturantsAlBahahRecord>>
    queryRecentChosenResturantsAlBahahRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          RecentChosenResturantsAlBahahRecord.collection,
          RecentChosenResturantsAlBahahRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<RecentChosenResturantsAlBahahRecord>>
    queryRecentChosenResturantsAlBahahRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          RecentChosenResturantsAlBahahRecord.collection,
          RecentChosenResturantsAlBahahRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query RecentChosenResturantsNajranRecords (as a Stream and as a Future).
Future<int> queryRecentChosenResturantsNajranRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RecentChosenResturantsNajranRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RecentChosenResturantsNajranRecord>>
    queryRecentChosenResturantsNajranRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          RecentChosenResturantsNajranRecord.collection,
          RecentChosenResturantsNajranRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<RecentChosenResturantsNajranRecord>>
    queryRecentChosenResturantsNajranRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          RecentChosenResturantsNajranRecord.collection,
          RecentChosenResturantsNajranRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query RecentChosenResturantsJazanRecords (as a Stream and as a Future).
Future<int> queryRecentChosenResturantsJazanRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RecentChosenResturantsJazanRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RecentChosenResturantsJazanRecord>>
    queryRecentChosenResturantsJazanRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          RecentChosenResturantsJazanRecord.collection,
          RecentChosenResturantsJazanRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<RecentChosenResturantsJazanRecord>>
    queryRecentChosenResturantsJazanRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          RecentChosenResturantsJazanRecord.collection,
          RecentChosenResturantsJazanRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query RecentChosenResturantsNorthernBordersRecords (as a Stream and as a Future).
Future<int> queryRecentChosenResturantsNorthernBordersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RecentChosenResturantsNorthernBordersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RecentChosenResturantsNorthernBordersRecord>>
    queryRecentChosenResturantsNorthernBordersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          RecentChosenResturantsNorthernBordersRecord.collection,
          RecentChosenResturantsNorthernBordersRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<RecentChosenResturantsNorthernBordersRecord>>
    queryRecentChosenResturantsNorthernBordersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          RecentChosenResturantsNorthernBordersRecord.collection,
          RecentChosenResturantsNorthernBordersRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UsersRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUsersRecordData(
    email: user.email ??
        FirebaseAuth.instance.currentUser?.email ??
        user.providerData.firstOrNull?.email,
    displayName:
        user.displayName ?? FirebaseAuth.instance.currentUser?.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument = UsersRecord.getDocumentFromData(userData, userRecord);
}

Future updateUserDocument({String? email}) async {
  await currentUserDocument?.reference
      .update(createUsersRecordData(email: email));
}
