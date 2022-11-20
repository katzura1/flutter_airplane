import 'package:bloc/bloc.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selectSeat(String id) {
    // print('prev state: $state');
    if (!isSelected(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }
    // print('new state: $state');
    emit(List.from(state));
  }

  void clearSeat() {
    state.clear();
  }

  bool isSelected(String id) {
    int index = state.indexOf(id);
    // print('index state: $index');
    return index == -1 ? false : true;
  }
}
