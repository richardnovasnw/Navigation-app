library app_navigation_state;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:navigation_app/model/serializers.dart';
import 'package:navigation_app/views/navigation/app_navigation_controller.dart';

part 'app_navigation_state.g.dart';

abstract class AppNavigationState
    implements Built<AppNavigationState, AppNavigationStateBuilder> {
  factory AppNavigationState(
          [void Function(AppNavigationStateBuilder)? updates]) =
      _$AppNavigationState;

  AppNavigationState._();

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(AppNavigationState.serializer, this)
        as Map<String, dynamic>?;
  }

  static AppNavigationState? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(AppNavigationState.serializer, json);
  }

  static Serializer<AppNavigationState> get serializer =>
      _$appNavigationStateSerializer;

  static void _initializeBuilder(AppNavigationStateBuilder b) {}

  HomeRoute? get homeRoute;
  Case? get cases;
  Case1? get useCase1;
  Case2? get usecase2;
  Case3? get usecase3;
  Case5? get usecas5;
  Case6? get usecase6;
  int? get index;
}
