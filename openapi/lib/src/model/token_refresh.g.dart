// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_refresh.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenRefresh extends TokenRefresh {
  @override
  final String refresh;
  @override
  final String? access;

  factory _$TokenRefresh([void Function(TokenRefreshBuilder)? updates]) =>
      (new TokenRefreshBuilder()..update(updates)).build();

  _$TokenRefresh._({required this.refresh, this.access}) : super._() {
    BuiltValueNullFieldError.checkNotNull(refresh, 'TokenRefresh', 'refresh');
  }

  @override
  TokenRefresh rebuild(void Function(TokenRefreshBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenRefreshBuilder toBuilder() => new TokenRefreshBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenRefresh &&
        refresh == other.refresh &&
        access == other.access;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, refresh.hashCode), access.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TokenRefresh')
          ..add('refresh', refresh)
          ..add('access', access))
        .toString();
  }
}

class TokenRefreshBuilder
    implements Builder<TokenRefresh, TokenRefreshBuilder> {
  _$TokenRefresh? _$v;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  TokenRefreshBuilder() {
    TokenRefresh._defaults(this);
  }

  TokenRefreshBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refresh = $v.refresh;
      _access = $v.access;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenRefresh other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenRefresh;
  }

  @override
  void update(void Function(TokenRefreshBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TokenRefresh build() {
    final _$result = _$v ??
        new _$TokenRefresh._(
            refresh: BuiltValueNullFieldError.checkNotNull(
                refresh, 'TokenRefresh', 'refresh'),
            access: access);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
