import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_number_state.dart';

class CounterNumberCubit extends Cubit<CounterNumberState> {
  CounterNumberCubit() : super(CounterNumberInitial());

  void cubitIncrement(int value) {
    emit((state is CounterNumberStateFilled)
        ? CounterNumberStateFilled(
            (state as CounterNumberStateFilled).value + value)
        : CounterNumberStateFilled(0));
  }
}
