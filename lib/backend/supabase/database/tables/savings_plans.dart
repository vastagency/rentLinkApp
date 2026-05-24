import '../database.dart';

class SavingsPlansTable extends SupabaseTable<SavingsPlansRow> {
  @override
  String get tableName => 'savings_plans';

  @override
  SavingsPlansRow createRow(Map<String, dynamic> data) => SavingsPlansRow(data);
}

class SavingsPlansRow extends SupabaseDataRow {
  SavingsPlansRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SavingsPlansTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get tenantId => getField<String>('tenant_id')!;
  set tenantId(String value) => setField<String>('tenant_id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String get planName => getField<String>('plan_name')!;
  set planName(String value) => setField<String>('plan_name', value);

  double get targetAmount => getField<double>('target_amount')!;
  set targetAmount(double value) => setField<double>('target_amount', value);

  double? get savedAmount => getField<double>('saved_amount');
  set savedAmount(double? value) => setField<double>('saved_amount', value);

  DateTime? get targetDate => getField<DateTime>('target_date');
  set targetDate(DateTime? value) => setField<DateTime>('target_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
