library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_web_demo/models/models.dart';

part 'serializers.g.dart';

@SerializersFor([
  Photo,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(photoListType, () => ListBuilder<Photo>())
      ..addPlugin(StandardJsonPlugin()))
    .build();
