import 'package:freezed_annotation/freezed_annotation.dart';

part 'layout_state.freezed.dart';

@freezed
abstract class LayoutState with _$LayoutState {
  const factory LayoutState({@Default(0) int selectedIndex}) = _LayoutState;
}
