import 'package:flutter/foundation.dart' show immutable;

@immutable
sealed class AppAssets {
  const AppAssets();

  // Logos
  static const String facebook = 'assets/logos/facebook.svg';
  static const String google = 'assets/logos/google.svg';
}
