// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:test/test.dart';
import 'package:twitter_oembed_api/src/content_language.dart';

void main() {
  test('.name', () {
    expect(ContentLanguage.english.name, 'english');
    expect(ContentLanguage.arabic.name, 'arabic');
    expect(ContentLanguage.bengali.name, 'bengali');
    expect(ContentLanguage.czech.name, 'czech');
    expect(ContentLanguage.danish.name, 'danish');
    expect(ContentLanguage.german.name, 'german');
    expect(ContentLanguage.greek.name, 'greek');
    expect(ContentLanguage.spanish.name, 'spanish');
    expect(ContentLanguage.persian.name, 'persian');
    expect(ContentLanguage.finnish.name, 'finnish');
    expect(ContentLanguage.filipino.name, 'filipino');
    expect(ContentLanguage.french.name, 'french');
    expect(ContentLanguage.hebrew.name, 'hebrew');
    expect(ContentLanguage.hindi.name, 'hindi');
    expect(ContentLanguage.hungarian.name, 'hungarian');
    expect(ContentLanguage.indonesian.name, 'indonesian');
    expect(ContentLanguage.italian.name, 'italian');
    expect(ContentLanguage.japanese.name, 'japanese');
    expect(ContentLanguage.korean.name, 'korean');
    expect(ContentLanguage.malay.name, 'malay');
    expect(ContentLanguage.dutch.name, 'dutch');
    expect(ContentLanguage.norwegian.name, 'norwegian');
    expect(ContentLanguage.polish.name, 'polish');
    expect(ContentLanguage.portuguese.name, 'portuguese');
    expect(ContentLanguage.romanian.name, 'romanian');
    expect(ContentLanguage.russian.name, 'russian');
    expect(ContentLanguage.swedish.name, 'swedish');
    expect(ContentLanguage.thai.name, 'thai');
    expect(ContentLanguage.turkish.name, 'turkish');
    expect(ContentLanguage.ukrainian.name, 'ukrainian');
    expect(ContentLanguage.urdu.name, 'urdu');
    expect(ContentLanguage.vietnamese.name, 'vietnamese');
    expect(ContentLanguage.simplifiedChinese.name, 'simplifiedChinese');
    expect(ContentLanguage.traditionalChinese.name, 'traditionalChinese');
  });

  test('.value', () {
    expect(ContentLanguage.english.value, 'en');
    expect(ContentLanguage.arabic.value, 'ar');
    expect(ContentLanguage.bengali.value, 'bn');
    expect(ContentLanguage.czech.value, 'cs');
    expect(ContentLanguage.danish.value, 'da');
    expect(ContentLanguage.german.value, 'de');
    expect(ContentLanguage.greek.value, 'el');
    expect(ContentLanguage.spanish.value, 'es');
    expect(ContentLanguage.persian.value, 'fa');
    expect(ContentLanguage.finnish.value, 'fi');
    expect(ContentLanguage.filipino.value, 'fil');
    expect(ContentLanguage.french.value, 'fr');
    expect(ContentLanguage.hebrew.value, 'he');
    expect(ContentLanguage.hindi.value, 'hi');
    expect(ContentLanguage.hungarian.value, 'hu');
    expect(ContentLanguage.indonesian.value, 'id');
    expect(ContentLanguage.italian.value, 'it');
    expect(ContentLanguage.japanese.value, 'ja');
    expect(ContentLanguage.korean.value, 'ko');
    expect(ContentLanguage.malay.value, 'msa');
    expect(ContentLanguage.dutch.value, 'nl');
    expect(ContentLanguage.norwegian.value, 'no');
    expect(ContentLanguage.polish.value, 'pl');
    expect(ContentLanguage.portuguese.value, 'pt');
    expect(ContentLanguage.romanian.value, 'ro');
    expect(ContentLanguage.russian.value, 'ru');
    expect(ContentLanguage.swedish.value, 'sv');
    expect(ContentLanguage.thai.value, 'th');
    expect(ContentLanguage.turkish.value, 'tr');
    expect(ContentLanguage.ukrainian.value, 'uk');
    expect(ContentLanguage.urdu.value, 'ur');
    expect(ContentLanguage.vietnamese.value, 'vi');
    expect(ContentLanguage.simplifiedChinese.value, 'zh-cn');
    expect(ContentLanguage.traditionalChinese.value, 'zh-tw');
  });
}
