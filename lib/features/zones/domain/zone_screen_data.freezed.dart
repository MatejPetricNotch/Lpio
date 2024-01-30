// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zone_screen_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZoneScreenData _$ZoneScreenDataFromJson(Map<String, dynamic> json) {
  return _ZoneScreenData.fromJson(json);
}

/// @nodoc
mixin _$ZoneScreenData {
  Account get account => throw _privateConstructorUsedError;
  List<BleClient> get bleClients => throw _privateConstructorUsedError;
  BleClient get selectedBleClient => throw _privateConstructorUsedError;
  List<ZoneData>? get zonesData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZoneScreenDataCopyWith<ZoneScreenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZoneScreenDataCopyWith<$Res> {
  factory $ZoneScreenDataCopyWith(
          ZoneScreenData value, $Res Function(ZoneScreenData) then) =
      _$ZoneScreenDataCopyWithImpl<$Res, ZoneScreenData>;
  @useResult
  $Res call(
      {Account account,
      List<BleClient> bleClients,
      BleClient selectedBleClient,
      List<ZoneData>? zonesData});

  $AccountCopyWith<$Res> get account;
  $BleClientCopyWith<$Res> get selectedBleClient;
}

/// @nodoc
class _$ZoneScreenDataCopyWithImpl<$Res, $Val extends ZoneScreenData>
    implements $ZoneScreenDataCopyWith<$Res> {
  _$ZoneScreenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? bleClients = null,
    Object? selectedBleClient = null,
    Object? zonesData = freezed,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      bleClients: null == bleClients
          ? _value.bleClients
          : bleClients // ignore: cast_nullable_to_non_nullable
              as List<BleClient>,
      selectedBleClient: null == selectedBleClient
          ? _value.selectedBleClient
          : selectedBleClient // ignore: cast_nullable_to_non_nullable
              as BleClient,
      zonesData: freezed == zonesData
          ? _value.zonesData
          : zonesData // ignore: cast_nullable_to_non_nullable
              as List<ZoneData>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BleClientCopyWith<$Res> get selectedBleClient {
    return $BleClientCopyWith<$Res>(_value.selectedBleClient, (value) {
      return _then(_value.copyWith(selectedBleClient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ZoneScreenDataImplCopyWith<$Res>
    implements $ZoneScreenDataCopyWith<$Res> {
  factory _$$ZoneScreenDataImplCopyWith(_$ZoneScreenDataImpl value,
          $Res Function(_$ZoneScreenDataImpl) then) =
      __$$ZoneScreenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Account account,
      List<BleClient> bleClients,
      BleClient selectedBleClient,
      List<ZoneData>? zonesData});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $BleClientCopyWith<$Res> get selectedBleClient;
}

/// @nodoc
class __$$ZoneScreenDataImplCopyWithImpl<$Res>
    extends _$ZoneScreenDataCopyWithImpl<$Res, _$ZoneScreenDataImpl>
    implements _$$ZoneScreenDataImplCopyWith<$Res> {
  __$$ZoneScreenDataImplCopyWithImpl(
      _$ZoneScreenDataImpl _value, $Res Function(_$ZoneScreenDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? bleClients = null,
    Object? selectedBleClient = null,
    Object? zonesData = freezed,
  }) {
    return _then(_$ZoneScreenDataImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      bleClients: null == bleClients
          ? _value._bleClients
          : bleClients // ignore: cast_nullable_to_non_nullable
              as List<BleClient>,
      selectedBleClient: null == selectedBleClient
          ? _value.selectedBleClient
          : selectedBleClient // ignore: cast_nullable_to_non_nullable
              as BleClient,
      zonesData: freezed == zonesData
          ? _value._zonesData
          : zonesData // ignore: cast_nullable_to_non_nullable
              as List<ZoneData>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ZoneScreenDataImpl implements _ZoneScreenData {
  const _$ZoneScreenDataImpl(
      {required this.account,
      required final List<BleClient> bleClients,
      required this.selectedBleClient,
      final List<ZoneData>? zonesData})
      : _bleClients = bleClients,
        _zonesData = zonesData;

  factory _$ZoneScreenDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZoneScreenDataImplFromJson(json);

  @override
  final Account account;
  final List<BleClient> _bleClients;
  @override
  List<BleClient> get bleClients {
    if (_bleClients is EqualUnmodifiableListView) return _bleClients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bleClients);
  }

  @override
  final BleClient selectedBleClient;
  final List<ZoneData>? _zonesData;
  @override
  List<ZoneData>? get zonesData {
    final value = _zonesData;
    if (value == null) return null;
    if (_zonesData is EqualUnmodifiableListView) return _zonesData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ZoneScreenData(account: $account, bleClients: $bleClients, selectedBleClient: $selectedBleClient, zonesData: $zonesData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZoneScreenDataImpl &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality()
                .equals(other._bleClients, _bleClients) &&
            (identical(other.selectedBleClient, selectedBleClient) ||
                other.selectedBleClient == selectedBleClient) &&
            const DeepCollectionEquality()
                .equals(other._zonesData, _zonesData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      account,
      const DeepCollectionEquality().hash(_bleClients),
      selectedBleClient,
      const DeepCollectionEquality().hash(_zonesData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZoneScreenDataImplCopyWith<_$ZoneScreenDataImpl> get copyWith =>
      __$$ZoneScreenDataImplCopyWithImpl<_$ZoneScreenDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZoneScreenDataImplToJson(
      this,
    );
  }
}

abstract class _ZoneScreenData implements ZoneScreenData {
  const factory _ZoneScreenData(
      {required final Account account,
      required final List<BleClient> bleClients,
      required final BleClient selectedBleClient,
      final List<ZoneData>? zonesData}) = _$ZoneScreenDataImpl;

  factory _ZoneScreenData.fromJson(Map<String, dynamic> json) =
      _$ZoneScreenDataImpl.fromJson;

  @override
  Account get account;
  @override
  List<BleClient> get bleClients;
  @override
  BleClient get selectedBleClient;
  @override
  List<ZoneData>? get zonesData;
  @override
  @JsonKey(ignore: true)
  _$$ZoneScreenDataImplCopyWith<_$ZoneScreenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
