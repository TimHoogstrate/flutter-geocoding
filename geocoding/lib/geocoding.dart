import 'dart:async';

import 'package:geocoding_platform_interface/geocoding_platform_interface.dart';

export 'package:geocoding_platform_interface/geocoding_platform_interface.dart';

/// Returns a list of [Location] instances found for the supplied address.
///
/// In most situations the returned list should only contain one entry.
/// However in some situations where the supplied address could not be
/// resolved into a single [Location], multiple [Location] instances may be
/// returned.
///
/// Optionally you can specify a locale in which the results are returned.
/// When not supplied the currently active locale of the device will be used.
/// The `localeIdentifier` should be formatted using the syntax:
/// [languageCode]_[countryCode] (eg. en_US or nl_NL).
Future<List<Location>> locationFromAddress(
  String address, {
  String? localeIdentifier,
}) =>
    GeocodingPlatform.instance!.locationFromAddress(
      address,
    );

/// Returns a list of [Placemark] instances found for the supplied
/// coordinates.
///
/// In most situations the returned list should only contain one entry.
/// However in some situations where the supplied coordinates could not be
/// resolved into a single [Placemark], multiple [Placemark] instances may be
/// returned.
///
/// Optionally you can specify a locale in which the results are returned.
/// When not supplied the currently active locale of the device will be used.
/// The `localeIdentifier` should be formatted using the syntax:
/// [languageCode]_[countryCode] (eg. en_US or nl_NL).
Future<List<Placemark>> placemarkFromCoordinates(
  double latitude,
  double longitude, {
  String? localeIdentifier,
}) =>
    GeocodingPlatform.instance!.placemarkFromCoordinates(
      latitude,
      longitude,
    );

/// Returns true if there is a geocoder implementation present that may return results.
/// If true, there is still no guarantee that any individual geocoding attempt will succeed.
///
///
/// This method is only implemented on Android, calling this on iOS always
/// returns [true].
Future<bool> isPresent() => GeocodingPlatform.instance!.isPresent();
