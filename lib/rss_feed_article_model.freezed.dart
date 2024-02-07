// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rss_feed_article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RssFeedArticle {
  String get title => throw _privateConstructorUsedError;
  DateTime get pubDate => throw _privateConstructorUsedError;
  String get enclosureUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RssFeedArticleCopyWith<RssFeedArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RssFeedArticleCopyWith<$Res> {
  factory $RssFeedArticleCopyWith(
          RssFeedArticle value, $Res Function(RssFeedArticle) then) =
      _$RssFeedArticleCopyWithImpl<$Res, RssFeedArticle>;
  @useResult
  $Res call({String title, DateTime pubDate, String enclosureUrl});
}

/// @nodoc
class _$RssFeedArticleCopyWithImpl<$Res, $Val extends RssFeedArticle>
    implements $RssFeedArticleCopyWith<$Res> {
  _$RssFeedArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? pubDate = null,
    Object? enclosureUrl = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pubDate: null == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      enclosureUrl: null == enclosureUrl
          ? _value.enclosureUrl
          : enclosureUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RssFeedArticleImplCopyWith<$Res>
    implements $RssFeedArticleCopyWith<$Res> {
  factory _$$RssFeedArticleImplCopyWith(_$RssFeedArticleImpl value,
          $Res Function(_$RssFeedArticleImpl) then) =
      __$$RssFeedArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, DateTime pubDate, String enclosureUrl});
}

/// @nodoc
class __$$RssFeedArticleImplCopyWithImpl<$Res>
    extends _$RssFeedArticleCopyWithImpl<$Res, _$RssFeedArticleImpl>
    implements _$$RssFeedArticleImplCopyWith<$Res> {
  __$$RssFeedArticleImplCopyWithImpl(
      _$RssFeedArticleImpl _value, $Res Function(_$RssFeedArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? pubDate = null,
    Object? enclosureUrl = null,
  }) {
    return _then(_$RssFeedArticleImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pubDate: null == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      enclosureUrl: null == enclosureUrl
          ? _value.enclosureUrl
          : enclosureUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RssFeedArticleImpl implements _RssFeedArticle {
  const _$RssFeedArticleImpl(
      {required this.title, required this.pubDate, required this.enclosureUrl});

  @override
  final String title;
  @override
  final DateTime pubDate;
  @override
  final String enclosureUrl;

  @override
  String toString() {
    return 'RssFeedArticle(title: $title, pubDate: $pubDate, enclosureUrl: $enclosureUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RssFeedArticleImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate) &&
            (identical(other.enclosureUrl, enclosureUrl) ||
                other.enclosureUrl == enclosureUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, pubDate, enclosureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RssFeedArticleImplCopyWith<_$RssFeedArticleImpl> get copyWith =>
      __$$RssFeedArticleImplCopyWithImpl<_$RssFeedArticleImpl>(
          this, _$identity);
}

abstract class _RssFeedArticle implements RssFeedArticle {
  const factory _RssFeedArticle(
      {required final String title,
      required final DateTime pubDate,
      required final String enclosureUrl}) = _$RssFeedArticleImpl;

  @override
  String get title;
  @override
  DateTime get pubDate;
  @override
  String get enclosureUrl;
  @override
  @JsonKey(ignore: true)
  _$$RssFeedArticleImplCopyWith<_$RssFeedArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
