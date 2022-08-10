// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:test/test.dart';
import 'package:twitter_oembed_api/src/timeline_widget_type.dart';

void main() {
  test('.name', () {
    expect(TimelineWidgetType.grid.name, 'grid');
  });
}
