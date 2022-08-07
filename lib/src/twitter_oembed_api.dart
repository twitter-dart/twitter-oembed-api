// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'base_service.dart';
import 'embedded_content.dart';

abstract class TwitterOembedApi {
  factory TwitterOembedApi() => _TwitterOembedApi();

  Future<EmbeddedContent> publishEmbeddedTweet();

  Future<EmbeddedContent> publishEmbeddedTimeline();
}

class _TwitterOembedApi extends BaseService implements TwitterOembedApi {
  @override
  Future<EmbeddedContent> publishEmbeddedTweet() {
    throw UnimplementedError();
  }

  @override
  Future<EmbeddedContent> publishEmbeddedTimeline() {
    throw UnimplementedError();
  }
}
