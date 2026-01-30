import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repositories/home_repository.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _repository;

  HomeCubit(this._repository) : super(const HomeState.initial());

  Future<void> loadHome() async {
    emit(const HomeState.loading());
    try {
      final data = await _repository.getHome();
      emit(HomeState.loaded(data));
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }
}
