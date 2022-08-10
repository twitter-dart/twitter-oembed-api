// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:twitter_oembed_api/twitter_oembed_api.dart';

Future<void> main() async {
  final twitterApi = TwitterOEmbedApi();

  try {
    // You can get the embedded tweet by specifying the tweet ID.
    final embeddedTweet = await twitterApi.publishEmbeddedTweet(
      tweetId: '507185938620219395',
      maxWidth: 550,
      align: ContentAlign.center,
    );

    print(embeddedTweet.html);

    // You can get the embedded timeline by specifying the screen name,
    // or with list name.
    final embeddedTimeline = await twitterApi.publishEmbeddedTimeline(
      screenName: 'TwitterDev',
      theme: ContentTheme.dark,
    );

    print(embeddedTimeline.html);
  } on TwitterOEmbedException catch (e) {
    print(e);
  }
}
