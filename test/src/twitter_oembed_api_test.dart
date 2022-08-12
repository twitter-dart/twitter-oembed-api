// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:test/test.dart';
import 'package:twitter_oembed_api/src/twitter_oembed_api.dart';
import 'package:twitter_oembed_api/src/twitter_oembed_exception.dart';

void main() {
  group('.publishEmbeddedTweet', () {
    test('normal case', () async {
      final twitterApi = TwitterOEmbedApi();

      final embeddedTweet = await twitterApi.publishEmbeddedTweet(
        screenName: 'Interior',
        tweetId: '507185938620219395',
      );

      expect(
          embeddedTweet.html,
          '<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Happy 50th anniversary to the Wilderness Act! Here&#39;s a great wilderness photo from <a href="https://twitter.com/YosemiteNPS?ref_src=twsrc%5Etfw">@YosemiteNPS</a>. <a href="https://twitter.com/hashtag/Wilderness50?src=hash&amp;ref_src=twsrc%5Etfw">#Wilderness50</a> <a href="http://t.co/HMhbyTg18X">pic.twitter.com/HMhbyTg18X</a></p>&mdash; US Department of the Interior (@Interior) <a href="https://twitter.com/Interior/status/507185938620219395?ref_src=twsrc%5Etfw">September 3, 2014</a></blockquote>\n'
          '<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>\n');
      expect(embeddedTweet.url,
          'https://twitter.com/Interior/status/507185938620219395');
      expect(embeddedTweet.authorName, 'US Department of the Interior');
      expect(embeddedTweet.authorUrl, 'https://twitter.com/Interior');
    });

    test('when tweet id is invalid', () {
      final twitterApi = TwitterOEmbedApi();

      expect(
        () async => await twitterApi.publishEmbeddedTweet(
          screenName: '',
          tweetId: '',
        ),
        throwsA(isA<TwitterOEmbedException>()),
      );
    });
  });

  group('.publishEmbeddedTimeline', () {
    test('normal case with screen name', () async {
      final twitterApi = TwitterOEmbedApi();

      final embeddedTimeline = await twitterApi.publishEmbeddedTimeline(
        screenName: 'TwitterDev',
      );

      expect(
          embeddedTimeline.html,
          '<a class="twitter-timeline" href="https://twitter.com/TwitterDev?ref_src=twsrc%5Etfw">Tweets by TwitterDev</a>\n'
          '<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>\n');
      expect(embeddedTimeline.url, 'https://twitter.com/TwitterDev');
    });

    test('normal case with list name', () async {
      final twitterApi = TwitterOEmbedApi();

      final embeddedTimeline = await twitterApi.publishEmbeddedTimeline(
        screenName: 'TwitterDev',
        listName: 'national-parks',
      );

      expect(
          embeddedTimeline.html,
          '<a class="twitter-timeline" href="https://twitter.com/TwitterDev/lists/national-parks?ref_src=twsrc%5Etfw">A Twitter List by TwitterDev</a>\n'
          '<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>\n');
      expect(embeddedTimeline.url,
          'https://twitter.com/TwitterDev/lists/national-parks');
    });

    test('when screen name is invalid', () {
      final twitterApi = TwitterOEmbedApi();

      expect(
        () async => await twitterApi.publishEmbeddedTimeline(screenName: ''),
        throwsA(isA<TwitterOEmbedException>()),
      );
    });

    test('when list name is invalid', () {
      final twitterApi = TwitterOEmbedApi();

      expect(
        () async => await twitterApi.publishEmbeddedTimeline(
          screenName: 'Twiterdev',
          listName: '',
        ),
        throwsA(isA<TwitterOEmbedException>()),
      );
    });
  });
}
