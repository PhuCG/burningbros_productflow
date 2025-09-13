class AppConstants {
  // API
  static const int apiTimeoutDuration = 30000; // 30 seconds
  static const int debounceTime = 500; // milliseconds

  // Pagination
  static const int pageSize = 20;

  // Storage
  static const String favoriteBoxName = 'favorites';

  // Error messages
  static const String networkErrorMessage = 'No internet connection';
  static const String serverErrorMessage = 'Server error occurred';
  static const String unknownErrorMessage = 'An unknown error occurred';
  static const String timeoutErrorMessage = 'Request timeout';

  // UI
  static const double defaultPadding = 16.0;
  static const double defaultBorderRadius = 8.0;
}
