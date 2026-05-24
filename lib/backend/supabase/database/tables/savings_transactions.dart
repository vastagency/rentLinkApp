import '../database.dart';

class SavingsTransactionsTable extends SupabaseTable<SavingsTransactionsRow> {
  @override
  String get tableName => 'savings_transactions';

  @override
  SavingsTransactionsRow createRow(Map<String, dynamic> data) =>
      SavingsTransactionsRow(data);
}

class SavingsTransactionsRow extends SupabaseDataRow {
  SavingsTransactionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SavingsTransactionsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get planId => getField<String>('plan_id')!;
  set planId(String value) => setField<String>('plan_id', value);

  String get tenantId => getField<String>('tenant_id')!;
  set tenantId(String value) => setField<String>('tenant_id', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);

  String? get paymentId => getField<String>('payment_id');
  set paymentId(String? value) => setField<String>('payment_id', value);

  DateTime? get depositedAt => getField<DateTime>('deposited_at');
  set depositedAt(DateTime? value) => setField<DateTime>('deposited_at', value);
}
