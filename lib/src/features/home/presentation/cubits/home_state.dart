import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/home_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.loaded(HomeModel data) = HomeLoaded;
  const factory HomeState.error(String message) = HomeError;
}
