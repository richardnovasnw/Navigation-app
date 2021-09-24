// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_navigation_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppNavigationState> _$appNavigationStateSerializer =
    new _$AppNavigationStateSerializer();

class _$AppNavigationStateSerializer
    implements StructuredSerializer<AppNavigationState> {
  @override
  final Iterable<Type> types = const [AppNavigationState, _$AppNavigationState];
  @override
  final String wireName = 'AppNavigationState';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AppNavigationState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.homeRoute;
    if (value != null) {
      result
        ..add('homeRoute')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(HomeRoute)));
    }
    value = object.cases;
    if (value != null) {
      result
        ..add('cases')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Case)));
    }
    value = object.useCase1;
    if (value != null) {
      result
        ..add('useCase1')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Case1)));
    }
    value = object.usecase2;
    if (value != null) {
      result
        ..add('usecase2')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Case2)));
    }
    value = object.usecase3;
    if (value != null) {
      result
        ..add('usecase3')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Case3)));
    }
    value = object.usecas5;
    if (value != null) {
      result
        ..add('usecas5')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Case5)));
    }
    value = object.usecase6;
    if (value != null) {
      result
        ..add('usecase6')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Case6)));
    }
    value = object.index;
    if (value != null) {
      result
        ..add('index')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AppNavigationState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppNavigationStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'homeRoute':
          result.homeRoute = serializers.deserialize(value,
              specifiedType: const FullType(HomeRoute)) as HomeRoute?;
          break;
        case 'cases':
          result.cases = serializers.deserialize(value,
              specifiedType: const FullType(Case)) as Case?;
          break;
        case 'useCase1':
          result.useCase1 = serializers.deserialize(value,
              specifiedType: const FullType(Case1)) as Case1?;
          break;
        case 'usecase2':
          result.usecase2 = serializers.deserialize(value,
              specifiedType: const FullType(Case2)) as Case2?;
          break;
        case 'usecase3':
          result.usecase3 = serializers.deserialize(value,
              specifiedType: const FullType(Case3)) as Case3?;
          break;
        case 'usecas5':
          result.usecas5 = serializers.deserialize(value,
              specifiedType: const FullType(Case5)) as Case5?;
          break;
        case 'usecase6':
          result.usecase6 = serializers.deserialize(value,
              specifiedType: const FullType(Case6)) as Case6?;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppNavigationState extends AppNavigationState {
  @override
  final HomeRoute? homeRoute;
  @override
  final Case? cases;
  @override
  final Case1? useCase1;
  @override
  final Case2? usecase2;
  @override
  final Case3? usecase3;
  @override
  final Case5? usecas5;
  @override
  final Case6? usecase6;
  @override
  final int? index;

  factory _$AppNavigationState(
          [void Function(AppNavigationStateBuilder)? updates]) =>
      (new AppNavigationStateBuilder()..update(updates)).build();

  _$AppNavigationState._(
      {this.homeRoute,
      this.cases,
      this.useCase1,
      this.usecase2,
      this.usecase3,
      this.usecas5,
      this.usecase6,
      this.index})
      : super._();

  @override
  AppNavigationState rebuild(
          void Function(AppNavigationStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppNavigationStateBuilder toBuilder() =>
      new AppNavigationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppNavigationState &&
        homeRoute == other.homeRoute &&
        cases == other.cases &&
        useCase1 == other.useCase1 &&
        usecase2 == other.usecase2 &&
        usecase3 == other.usecase3 &&
        usecas5 == other.usecas5 &&
        usecase6 == other.usecase6 &&
        index == other.index;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, homeRoute.hashCode), cases.hashCode),
                            useCase1.hashCode),
                        usecase2.hashCode),
                    usecase3.hashCode),
                usecas5.hashCode),
            usecase6.hashCode),
        index.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppNavigationState')
          ..add('homeRoute', homeRoute)
          ..add('cases', cases)
          ..add('useCase1', useCase1)
          ..add('usecase2', usecase2)
          ..add('usecase3', usecase3)
          ..add('usecas5', usecas5)
          ..add('usecase6', usecase6)
          ..add('index', index))
        .toString();
  }
}

class AppNavigationStateBuilder
    implements Builder<AppNavigationState, AppNavigationStateBuilder> {
  _$AppNavigationState? _$v;

  HomeRoute? _homeRoute;
  HomeRoute? get homeRoute => _$this._homeRoute;
  set homeRoute(HomeRoute? homeRoute) => _$this._homeRoute = homeRoute;

  Case? _cases;
  Case? get cases => _$this._cases;
  set cases(Case? cases) => _$this._cases = cases;

  Case1? _useCase1;
  Case1? get useCase1 => _$this._useCase1;
  set useCase1(Case1? useCase1) => _$this._useCase1 = useCase1;

  Case2? _usecase2;
  Case2? get usecase2 => _$this._usecase2;
  set usecase2(Case2? usecase2) => _$this._usecase2 = usecase2;

  Case3? _usecase3;
  Case3? get usecase3 => _$this._usecase3;
  set usecase3(Case3? usecase3) => _$this._usecase3 = usecase3;

  Case5? _usecas5;
  Case5? get usecas5 => _$this._usecas5;
  set usecas5(Case5? usecas5) => _$this._usecas5 = usecas5;

  Case6? _usecase6;
  Case6? get usecase6 => _$this._usecase6;
  set usecase6(Case6? usecase6) => _$this._usecase6 = usecase6;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  AppNavigationStateBuilder() {
    AppNavigationState._initializeBuilder(this);
  }

  AppNavigationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _homeRoute = $v.homeRoute;
      _cases = $v.cases;
      _useCase1 = $v.useCase1;
      _usecase2 = $v.usecase2;
      _usecase3 = $v.usecase3;
      _usecas5 = $v.usecas5;
      _usecase6 = $v.usecase6;
      _index = $v.index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppNavigationState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppNavigationState;
  }

  @override
  void update(void Function(AppNavigationStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppNavigationState build() {
    final _$result = _$v ??
        new _$AppNavigationState._(
            homeRoute: homeRoute,
            cases: cases,
            useCase1: useCase1,
            usecase2: usecase2,
            usecase3: usecase3,
            usecas5: usecas5,
            usecase6: usecase6,
            index: index);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
