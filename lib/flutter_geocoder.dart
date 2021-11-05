import 'package:flutter_geocoder/services/base.dart';
import 'package:flutter_geocoder/services/distant_google.dart';
import 'package:flutter_geocoder/services/local.dart';

export 'model.dart';

class FlutterGeocoder {
  static final Geocoding local = LocalGeocoding();
  static Geocoding google(
    String apiKey, {
    String? language,
    Map<String, Object>? headers,
    bool preserveHeaderCase = false,
  }) =>
      GoogleGeocoding(apiKey,
          language: language,
          headers: headers,
          preserveHeaderCase: preserveHeaderCase);
}
