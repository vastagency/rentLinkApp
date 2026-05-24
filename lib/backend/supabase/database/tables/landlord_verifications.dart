import '../database.dart';

class LandlordVerificationsTable
    extends SupabaseTable<LandlordVerificationsRow> {
  @override
  String get tableName => 'landlord_verifications';

  @override
  LandlordVerificationsRow createRow(Map<String, dynamic> data) =>
      LandlordVerificationsRow(data);
}

class LandlordVerificationsRow extends SupabaseDataRow {
  LandlordVerificationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LandlordVerificationsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get landlordId => getField<String>('landlord_id')!;
  set landlordId(String value) => setField<String>('landlord_id', value);

  String? get idType => getField<String>('id_type');
  set idType(String? value) => setField<String>('id_type', value);

  String? get idDocumentUrl => getField<String>('id_document_url');
  set idDocumentUrl(String? value) =>
      setField<String>('id_document_url', value);

  String? get ownershipDocumentUrl =>
      getField<String>('ownership_document_url');
  set ownershipDocumentUrl(String? value) =>
      setField<String>('ownership_document_url', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get rejectionReason => getField<String>('rejection_reason');
  set rejectionReason(String? value) =>
      setField<String>('rejection_reason', value);

  DateTime? get submittedAt => getField<DateTime>('submitted_at');
  set submittedAt(DateTime? value) => setField<DateTime>('submitted_at', value);

  DateTime? get reviewedAt => getField<DateTime>('reviewed_at');
  set reviewedAt(DateTime? value) => setField<DateTime>('reviewed_at', value);
}
