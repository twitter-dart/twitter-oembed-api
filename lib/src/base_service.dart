// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:http/http.dart' as http;

abstract class _Service {
  Future<http.Response> get({
    Map<String, dynamic> queryParameters = const {},
  });
}

class BaseService implements _Service {
  @override
  Future<http.Response> get({
    Map<String, dynamic> queryParameters = const {},
  }) =>
      http.get(
        Uri.https(
          'publish.twitter.com',
          '/oembed',
          _convertQueryParameters(queryParameters),
        ),
      );

  dynamic _removeNullParameters(final dynamic object) {
    if (object is! Map) {
      return object;
    }

    final parameters = <String, dynamic>{};
    object.forEach((key, value) {
      final newObject = _removeNullParameters(value);
      if (newObject != null) {
        parameters[key] = newObject;
      }
    });

    return parameters.isNotEmpty ? parameters : null;
  }

  Map<String, String> _convertQueryParameters(
    final Map<String, dynamic> queryParameters,
  ) =>
      Map.from(_removeNullParameters(queryParameters) ?? {}).map(
        //! Uri.https(...) needs iterable in the value for query params by
        //! which it means a String in the value of the Map too. So you need
        //! to convert it from Map<String, dynamic> to Map<String, String>
        (key, value) => MapEntry(key, value.toString()),
      );
}
