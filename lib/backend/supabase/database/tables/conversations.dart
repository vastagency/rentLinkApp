import '../database.dart';

class ConversationsTable extends SupabaseTable<ConversationsRow> {
  @override
  String get tableName => 'conversations';

  @override
  ConversationsRow createRow(Map<String, dynamic> data) =>
      ConversationsRow(data);
}

class ConversationsRow extends SupabaseDataRow {
  ConversationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConversationsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String get tenantId => getField<String>('tenant_id')!;
  set tenantId(String value) => setField<String>('tenant_id', value);

  String get landlordId => getField<String>('landlord_id')!;
  set landlordId(String value) => setField<String>('landlord_id', value);

  String? get lastMessage => getField<String>('last_message');
  set lastMessage(String? value) => setField<String>('last_message', value);

  DateTime? get lastMessageAt => getField<DateTime>('last_message_at');
  set lastMessageAt(DateTime? value) =>
      setField<DateTime>('last_message_at', value);

  int? get tenantUnread => getField<int>('tenant_unread');
  set tenantUnread(int? value) => setField<int>('tenant_unread', value);

  int? get landlordUnread => getField<int>('landlord_unread');
  set landlordUnread(int? value) => setField<int>('landlord_unread', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
