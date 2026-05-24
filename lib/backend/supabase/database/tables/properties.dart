import '../database.dart';

class PropertiesTable extends SupabaseTable<PropertiesRow> {
  @override
  String get tableName => 'properties';

  @override
  PropertiesRow createRow(Map<String, dynamic> data) => PropertiesRow(data);
}

class PropertiesRow extends SupabaseDataRow {
  PropertiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertiesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get landlordId => getField<String>('landlord_id')!;
  set landlordId(String value) => setField<String>('landlord_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get propertyType => getField<String>('property_type');
  set propertyType(String? value) => setField<String>('property_type', value);

  int? get bedrooms => getField<int>('bedrooms');
  set bedrooms(int? value) => setField<int>('bedrooms', value);

  int? get bathrooms => getField<int>('bathrooms');
  set bathrooms(int? value) => setField<int>('bathrooms', value);

  String? get furnishing => getField<String>('furnishing');
  set furnishing(String? value) => setField<String>('furnishing', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get nearbyLandmark => getField<String>('nearby_landmark');
  set nearbyLandmark(String? value) =>
      setField<String>('nearby_landmark', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  double? get rentAmount => getField<double>('rent_amount');
  set rentAmount(double? value) => setField<double>('rent_amount', value);

  String? get rentPeriod => getField<String>('rent_period');
  set rentPeriod(String? value) => setField<String>('rent_period', value);

  double? get serviceCharge => getField<double>('service_charge');
  set serviceCharge(double? value) => setField<double>('service_charge', value);

  double? get agencyFee => getField<double>('agency_fee');
  set agencyFee(double? value) => setField<double>('agency_fee', value);

  List<String> get amenities => getListField<String>('amenities');
  set amenities(List<String>? value) =>
      setListField<String>('amenities', value);

  List<String> get photos => getListField<String>('photos');
  set photos(List<String>? value) => setListField<String>('photos', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  int? get viewsCount => getField<int>('views_count');
  set viewsCount(int? value) => setField<int>('views_count', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
