class AppEndpoints {
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `LocalStorageKey()` accidentally
  AppEndpoints._();
  // the properties are static so that we can use them without a class instance
  // e.g. can be retrieved by `LocalStorageKey.saveUserId`.
  static const String baseUrl = 'https://www.reddit.com/r/FlutterDev';
}

