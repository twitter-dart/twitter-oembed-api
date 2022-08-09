// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:test/test.dart';
import 'package:twitter_oembed_api/src/content_align.dart';

void main() {
  test('.name', () {
    expect(ContentAlign.left.name, 'left');
    expect(ContentAlign.center.name, 'center');
    expect(ContentAlign.right.name, 'right');
    expect(ContentAlign.none.name, 'none');
  });
}
