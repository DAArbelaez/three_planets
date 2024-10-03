class DataNotFoundException implements Exception {
  /// A human-readable error message, possibly null.
  final String? message;

  const DataNotFoundException({this.message});
}
