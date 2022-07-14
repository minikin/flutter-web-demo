// GENERATED CODE - DO NOT MODIFY BY HAND

part of photo;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Photo> _$photoSerializer = new _$PhotoSerializer();

class _$PhotoSerializer implements StructuredSerializer<Photo> {
  @override
  final Iterable<Type> types = const [Photo, _$Photo];
  @override
  final String wireName = 'Photo';

  @override
  Iterable<Object?> serialize(Serializers serializers, Photo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(String)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'download_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Photo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'download_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Photo extends Photo {
  @override
  final String author;
  @override
  final int height;
  @override
  final String id;
  @override
  final String imageUrl;
  @override
  final String url;
  @override
  final int width;

  factory _$Photo([void Function(PhotoBuilder)? updates]) =>
      (new PhotoBuilder()..update(updates))._build();

  _$Photo._(
      {required this.author,
      required this.height,
      required this.id,
      required this.imageUrl,
      required this.url,
      required this.width})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(author, r'Photo', 'author');
    BuiltValueNullFieldError.checkNotNull(height, r'Photo', 'height');
    BuiltValueNullFieldError.checkNotNull(id, r'Photo', 'id');
    BuiltValueNullFieldError.checkNotNull(imageUrl, r'Photo', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(url, r'Photo', 'url');
    BuiltValueNullFieldError.checkNotNull(width, r'Photo', 'width');
  }

  @override
  Photo rebuild(void Function(PhotoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoBuilder toBuilder() => new PhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photo &&
        author == other.author &&
        height == other.height &&
        id == other.id &&
        imageUrl == other.imageUrl &&
        url == other.url &&
        width == other.width;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, author.hashCode), height.hashCode), id.hashCode),
                imageUrl.hashCode),
            url.hashCode),
        width.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Photo')
          ..add('author', author)
          ..add('height', height)
          ..add('id', id)
          ..add('imageUrl', imageUrl)
          ..add('url', url)
          ..add('width', width))
        .toString();
  }
}

class PhotoBuilder implements Builder<Photo, PhotoBuilder> {
  _$Photo? _$v;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  PhotoBuilder();

  PhotoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _author = $v.author;
      _height = $v.height;
      _id = $v.id;
      _imageUrl = $v.imageUrl;
      _url = $v.url;
      _width = $v.width;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Photo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Photo;
  }

  @override
  void update(void Function(PhotoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Photo build() => _build();

  _$Photo _build() {
    final _$result = _$v ??
        new _$Photo._(
            author: BuiltValueNullFieldError.checkNotNull(
                author, r'Photo', 'author'),
            height: BuiltValueNullFieldError.checkNotNull(
                height, r'Photo', 'height'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'Photo', 'id'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'Photo', 'imageUrl'),
            url: BuiltValueNullFieldError.checkNotNull(url, r'Photo', 'url'),
            width: BuiltValueNullFieldError.checkNotNull(
                width, r'Photo', 'width'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
