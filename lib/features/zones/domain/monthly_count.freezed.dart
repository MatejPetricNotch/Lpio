// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonthlyCount _$MonthlyCountFromJson(Map<String, dynamic> json) {
  return _MonthlyCount.fromJson(json);
}

/// @nodoc
mixin _$MonthlyCount {
  String get month => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonthlyCountCopyWith<MonthlyCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyCountCopyWith<$Res> {
  factory $MonthlyCountCopyWith(
          MonthlyCount value, $Res Function(MonthlyCount) then) =
      _$MonthlyCountCopyWithImpl<$Res, MonthlyCount>;
  @useResult
  $Res call({String month, int count});
}

/// @nodoc
class _$MonthlyCountCopyWithImpl<$Res, $Val extends MonthlyCount>
    implements $MonthlyCountCopyWith<$Res> {
  _$MonthlyCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyCountImplCopyWith<$Res>
    implements $MonthlyCountCopyWith<$Res> {
  factory _$$MonthlyCountImplCopyWith(
          _$MonthlyCountImpl value, $Res Function(_$MonthlyCountImpl) then) =
      __$$MonthlyCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String month, int count});
}

/// @nodoc
class __$$MonthlyCountImplCopyWithImpl<$Res>
    extends _$MonthlyCountCopyWithImpl<$Res, _$MonthlyCountImpl>
    implements _$$MonthlyCountImplCopyWith<$Res> {
  __$$MonthlyCountImplCopyWithImpl(
      _$MonthlyCountImpl _value, $Res Function(_$MonthlyCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? count = null,
  }) {
    return _then(_$MonthlyCountImpl(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MonthlyCountImpl implements _MonthlyCount {
  const _$MonthlyCountImpl({required this.month, required this.count});

  factory _$MonthlyCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyCountImplFromJson(json);

  @override
  final String month;
  @override
  final int count;

  @override
  String toString() {
    return 'MonthlyCount(month: $month, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyCountImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, month, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyCountImplCopyWith<_$MonthlyCountImpl> get copyWith =>
      __$$MonthlyCountImplCopyWithImpl<_$MonthlyCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyCountImplToJson(
      this,
    );
  }
}

abstract class _MonthlyCount implements MonthlyCount {
  const factory _MonthlyCount(
      {required final String month,
      required final int count}) = _$MonthlyCountImpl;

  factory _MonthlyCount.fromJson(Map<String, dynamic> json) =
      _$MonthlyCountImpl.fromJson;

  @override
  String get month;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$MonthlyCountImplCopyWith<_$MonthlyCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
