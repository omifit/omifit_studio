bool isNotString(value) {
  if (value == null) return true;
  return value is! String;
}

// bool isNotInt(dynamic value) {
//   if (value == null) return true;
//   return value is! int;
// }
// bool isNotBool(dynamic value) {
//   if (value == null) return true;
//   return value is! bool;
// }
bool isNotList(value) {
  if (value == null) return true;
  return value is! List;
}

// bool isNotDouble(dynamic value) {
//   if (value == null) return true;
//   return value is! double;
// }
// double parseRating(dynamic value) {
//   if (value == null) return 0.0;
//   if (value is String) return double.tryParse(value) ?? 0.0;
//   if (value is int) return value.toDouble();
//   return value;
// }
bool isNotMap(value) {
  if (value == null) return true;
  return value is! Map;
}

//// PARSE DATA TYPE
List parseList(value) {
  if (value == null) return [];
  if (value is List) return value;
  return [value];
}

bool parseBool(value) {
  return value == true;
}

double? parseDouble(value) {
  if (value == null) return null;
  if (value is String) return double.tryParse(value) ?? 0.0;
  if (value is int) return value.toDouble();
  if (value is double) return value;
  return null;
}

int? parseInteger(value) {
  if (value == null) return null;
  if (value is String) return int.tryParse(value) ?? 0;
  if (value is double) return value.toInt();
  if (value is int) return value;
  return null;
}

String? parseString(value) {
  if (value == null) return null;
  if (value is double) return value.toStringAsFixed(2);
  if (value is int) return value.toString();
  if (value is String) return value;
  return null;
}

// DateTime parseDateTime(value) {
//   if (value == null) return null;
//   return DateTime.tryParse(value.toString());
// }
