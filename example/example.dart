// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:twitter_oembed_api/twitter_oembed_api.dart';

Future<void> main() async {
  final twitterApi = TwitterOEmbedApi();

  final embeddedTweet = await twitterApi.publishEmbeddedTweet(
    tweetId: '507185938620219395',
    maxWidth: 550,
    align: ContentAlign.center,
    theme: ContentTheme.dark,
  );

  print(embeddedTweet.html);
}
