// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beacons_screen_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeaconsScreenData _$BeaconsScreenDataFromJson(Map<String, dynamic> json) {
  return _BeaconsScreenData.fromJson(json);
}

/// @nodoc
mixin _$BeaconsScreenData {
  int get sendingIntervalForeground => throw _privateConstructorUsedError;
  int get sendingIntervalBackground => throw _privateConstructorUsedError;
  BleClient? get selectedBleClient => throw _privateConstructorUsedError;
  List<BleClient>? get bleClients => throw _privateConstructorUsedError;
  String? get uuidSelected => throw _privateConstructorUsedError;
  String? get majorSelected => throw _privateConstructorUsedError;
  bool get sendingStarted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeaconsScreenDataCopyWith<BeaconsScreenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeaconsScreenDataCopyWith<$Res> {
  factory $BeaconsScreenDataCopyWith(
          BeaconsScreenData value, $Res Function(BeaconsScreenData) then) =
      _$BeaconsScreenDataCopyWithImpl<$Res, BeaconsScreenData>;
  @useResult
  $Res call(
      {int sendingIntervalForeground,
      int sendingIntervalBackground,
      BleClient? selectedBleClient,
      List<BleClient>? bleClients,
      String? uuidSelected,
      String? majorSelected,
      bool sendingStarted});

  $BleClientCopyWith<$Res>? get selectedBleClient;
}

/// @nodoc
class _$BeaconsScreenDataCopyWithImpl<$Res, $Val extends BeaconsScreenData>
    implements $BeaconsScreenDataCopyWith<$Res> {
  _$BeaconsScreenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendingIntervalForeground = null,
    Object? sendingIntervalBackground = null,
    Object? selectedBleClient = freezed,
    Object? bleClients = freezed,
    Object? uuidSelected = freezed,
    Object? majorSelected = freezed,
    Object? sendingStarted = null,
  }) {
    return _then(_value.copyWith(
      sendingIntervalForeground: null == sendingIntervalForeground
          ? _value.sendingIntervalForeground
          : sendingIntervalForeground // ignore: cast_nullable_to_non_nullable
              as int,
      sendingIntervalBackground: null == sendingIntervalBackground
          ? _value.sendingIntervalBackground
          : sendingIntervalBackground // ignore: cast_nullable_to_non_nullable
              as int,
      selectedBleClient: freezed == selectedBleClient
          ? _value.selectedBleClient
          : selectedBleClient // ignore: cast_nullable_to_non_nullable
              as BleClient?,
      bleClients: freezed == bleClients
          ? _value.bleClients
          : bleClients // ignore: cast_nullable_to_non_nullable
              as List<BleClient>?,
      uuidSelected: freezed == uuidSelected
          ? _value.uuidSelected
          : uuidSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      majorSelected: freezed == majorSelected
          ? _value.majorSelected
          : majorSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      sendingStarted: null == sendingStarted
          ? _value.sendingStarted
          : sendingStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BleClientCopyWith<$Res>? get selectedBleClient {
    if (_value.selectedBleClient == null) {
      return null;
    }

    return $BleClientCopyWith<$Res>(_value.selectedBleClient!, (value) {
      return _then(_value.copyWith(selectedBleClient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BeaconsScreenDataImplCopyWith<$Res>
    implements $BeaconsScreenDataCopyWith<$Res> {
  factory _$$BeaconsScreenDataImplCopyWith(_$BeaconsScreenDataImpl value,
          $Res Function(_$BeaconsScreenDataImpl) then) =
      __$$BeaconsScreenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int sendingIntervalForeground,
      int sendingIntervalBackground,
      BleClient? selectedBleClient,
      List<BleClient>? bleClients,
      String? uuidSelected,
      String? majorSelected,
      bool sendingStarted});

  @override
  $BleClientCopyWith<$Res>? get selectedBleClient;
}

/// @nodoc
class __$$BeaconsScreenDataImplCopyWithImpl<$Res>
    extends _$BeaconsScreenDataCopyWithImpl<$Res, _$BeaconsScreenDataImpl>
    implements _$$BeaconsScreenDataImplCopyWith<$Res> {
  __$$BeaconsScreenDataImplCopyWithImpl(_$BeaconsScreenDataImpl _value,
      $Res Function(_$BeaconsScreenDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendingIntervalForeground = null,
    Object? sendingIntervalBackground = null,
    Object? selectedBleClient = freezed,
    Object? bleClients = freezed,
    Object? uuidSelected = freezed,
    Object? majorSelected = freezed,
    Object? sendingStarted = null,
  }) {
    return _then(_$BeaconsScreenDataImpl(
      sendingIntervalForeground: null == sendingIntervalForeground
          ? _value.sendingIntervalForeground
          : sendingIntervalForeground // ignore: cast_nullable_to_non_nullable
              as int,
      sendingIntervalBackground: null == sendingIntervalBackground
          ? _value.sendingIntervalBackground
          : sendingIntervalBackground // ignore: cast_nullable_to_non_nullable
              as int,
      selectedBleClient: freezed == selectedBleClient
          ? _value.selectedBleClient
          : selectedBleClient // ignore: cast_nullable_to_non_nullable
              as BleClient?,
      bleClients: freezed == bleClients
          ? _value._bleClients
          : bleClients // ignore: cast_nullable_to_non_nullable
              as List<BleClient>?,
      uuidSelected: freezed == uuidSelected
          ? _value.uuidSelected
          : uuidSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      majorSelected: freezed == majorSelected
          ? _value.majorSelected
          : majorSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      sendingStarted: null == sendingStarted
          ? _value.sendingStarted
          : sendingStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BeaconsScreenDataImpl implements _BeaconsScreenData {
  const _$BeaconsScreenDataImpl(
      {required this.sendingIntervalForeground,
      required this.sendingIntervalBackground,
      this.selectedBleClient,
      final List<BleClient>? bleClients,
      this.uuidSelected,
      this.majorSelected,
      required this.sendingStarted})
      : _bleClients = bleClients;

  factory _$BeaconsScreenDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeaconsScreenDataImplFromJson(json);

  @override
  final int sendingIntervalForeground;
  @override
  final int sendingIntervalBackground;
  @override
  final BleClient? selectedBleClient;
  final List<BleClient>? _bleClients;
  @override
  List<BleClient>? get bleClients {
    final value = _bleClients;
    if (value == null) return null;
    if (_bleClients is EqualUnmodifiableListView) return _bleClients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? uuidSelected;
  @override
  final String? majorSelected;
  @override
  final bool sendingStarted;

  @override
  String toString() {
    return 'BeaconsScreenData(sendingIntervalForeground: $sendingIntervalForeground, sendingIntervalBackground: $sendingIntervalBackground, selectedBleClient: $selectedBleClient, bleClients: $bleClients, uuidSelected: $uuidSelected, majorSelected: $majorSelected, sendingStarted: $sendingStarted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeaconsScreenDataImpl &&
            (identical(other.sendingIntervalForeground,
                    sendingIntervalForeground) ||
                other.sendingIntervalForeground == sendingIntervalForeground) &&
            (identical(other.sendingIntervalBackground,
                    sendingIntervalBackground) ||
                other.sendingIntervalBackground == sendingIntervalBackground) &&
            (identical(other.selectedBleClient, selectedBleClient) ||
                other.selectedBleClient == selectedBleClient) &&
            const DeepCollectionEquality()
                .equals(other._bleClients, _bleClients) &&
            (identical(other.uuidSelected, uuidSelected) ||
                other.uuidSelected == uuidSelected) &&
            (identical(other.majorSelected, majorSelected) ||
                other.majorSelected == majorSelected) &&
            (identical(other.sendingStarted, sendingStarted) ||
                other.sendingStarted == sendingStarted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sendingIntervalForeground,
      sendingIntervalBackground,
      selectedBleClient,
      const DeepCollectionEquality().hash(_bleClients),
      uuidSelected,
      majorSelected,
      sendingStarted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeaconsScreenDataImplCopyWith<_$BeaconsScreenDataImpl> get copyWith =>
      __$$BeaconsScreenDataImplCopyWithImpl<_$BeaconsScreenDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeaconsScreenDataImplToJson(
      this,
    );
  }
}

abstract class _BeaconsScreenData implements BeaconsScreenData {
  const factory _BeaconsScreenData(
      {required final int sendingIntervalForeground,
      required final int sendingIntervalBackground,
      final BleClient? selectedBleClient,
      final List<BleClient>? bleClients,
      final String? uuidSelected,
      final String? majorSelected,
      required final bool sendingStarted}) = _$BeaconsScreenDataImpl;

  factory _BeaconsScreenData.fromJson(Map<String, dynamic> json) =
      _$BeaconsScreenDataImpl.fromJson;

  @override
  int get sendingIntervalForeground;
  @override
  int get sendingIntervalBackground;
  @override
  BleClient? get selectedBleClient;
  @override
  List<BleClient>? get bleClients;
  @override
  String? get uuidSelected;
  @override
  String? get majorSelected;
  @override
  bool get sendingStarted;
  @override
  @JsonKey(ignore: true)
  _$$BeaconsScreenDataImplCopyWith<_$BeaconsScreenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
