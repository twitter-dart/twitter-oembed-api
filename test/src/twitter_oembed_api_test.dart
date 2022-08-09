// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:test/test.dart';
import 'package:twitter_oembed_api/src/twitter_oembed_api.dart';
import 'package:twitter_oembed_api/src/twitter_oembed_exception.dart';

void main() {
  group('.publishEmbeddedTweet', () {
    test('normal case', () async {
      final twitterApi = TwitterOembedApi();

      final embeddedTweet = await twitterApi.publishEmbeddedTweet(
        tweetId: '507185938620219395',
      );

      expect(embeddedTweet.url,
          'https://twitter.com/Interior/status/507185938620219395');
      expect(
          embeddedTweet.html,
          '<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Happy 50th anniversary to the Wilderness Act! Here&#39;s a great wilderness photo from <a href="https://twitter.com/YosemiteNPS?ref_src=twsrc%5Etfw">@YosemiteNPS</a>. <a href="https://twitter.com/hashtag/Wilderness50?src=hash&amp;ref_src=twsrc%5Etfw">#Wilderness50</a> <a href="http://t.co/HMhbyTg18X">pic.twitter.com/HMhbyTg18X</a></p>&mdash; US Department of the Interior (@Interior) <a href="https://twitter.com/Interior/status/507185938620219395?ref_src=twsrc%5Etfw">September 3, 2014</a></blockquote>\n'
          '<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>\n');
      expect(embeddedTweet.width, 550);
      expect(embeddedTweet.type, 'rich');
      expect(embeddedTweet.cacheAge, '3153600000');
      expect(embeddedTweet.authorName, 'US Department of the Interior');
      expect(embeddedTweet.authorUrl, 'https://twitter.com/Interior');
      expect(embeddedTweet.providerName, 'Twitter');
      expect(embeddedTweet.providerUrl, 'https://twitter.com');
      expect(embeddedTweet.version, '1.0');
    });

    test('when tweet id is invalid', () {
      final twitterApi = TwitterOembedApi();

      expect(
        () async => await twitterApi.publishEmbeddedTweet(tweetId: ''),
        throwsA(isA<TwitterOEmbedException>()),
      );
    });
  });
}
