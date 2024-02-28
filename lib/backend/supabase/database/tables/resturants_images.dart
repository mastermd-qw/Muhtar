import '../database.dart';

class ResturantsImagesTable extends SupabaseTable<ResturantsImagesRow> {
  @override
  String get tableName => 'ResturantsImages';

  @override
  ResturantsImagesRow createRow(Map<String, dynamic> data) =>
      ResturantsImagesRow(data);
}

class ResturantsImagesRow extends SupabaseDataRow {
  ResturantsImagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ResturantsImagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
