import '../database.dart';

class SavedPropertiesTable extends SupabaseTable<SavedPropertiesRow> {
  @override
  String get tableName => 'saved_properties';

  @override
  SavedPropertiesRow createRow(Map<String, dynamic> data) =>
      SavedPropertiesRow(data);
}

class SavedPropertiesRow extends SupabaseDataRow {
  SavedPropertiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SavedPropertiesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get tenantId => getField<String>('tenant_id')!;
  set tenantId(String value) => setField<String>('tenant_id', value);

  String get propertyId => getField<String>('property_id')!;
  set propertyId(String value) => setField<String>('property_id', value);

  DateTime? get savedAt => getField<DateTime>('saved_at');
  set savedAt(DateTime? value) => setField<DateTime>('saved_at', value);
}
