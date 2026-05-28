import '../database.dart';

class InspectionsTable extends SupabaseTable<InspectionsRow> {
  @override
  String get tableName => 'inspections';

  @override
  InspectionsRow createRow(Map<String, dynamic> data) => InspectionsRow(data);
}

class InspectionsRow extends SupabaseDataRow {
  InspectionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InspectionsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get propertyId => getField<String>('property_id')!;
  set propertyId(String value) => setField<String>('property_id', value);

  String get tenantId => getField<String>('tenant_id')!;
  set tenantId(String value) => setField<String>('tenant_id', value);

  String get landlordId => getField<String>('landlord_id')!;
  set landlordId(String value) => setField<String>('landlord_id', value);

  String get inspectionDate => getField<String>('inspection_date')!;
  set inspectionDate(String value) =>
      setField<String>('inspection_date', value);

  String get inspectionTime => getField<String>('inspection_time')!;
  set inspectionTime(String value) =>
      setField<String>('inspection_time', value);

  String? get note => getField<String>('note');
  set note(String? value) => setField<String>('note', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
