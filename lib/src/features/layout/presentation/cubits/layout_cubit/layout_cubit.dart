import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharad/src/features/layout/presentation/cubits/layout_cubit/layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(const LayoutState());

  void changeIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }
}
