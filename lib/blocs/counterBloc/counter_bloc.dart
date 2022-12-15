import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<ChangeCounterEvent>(((event, emit) {
      emit(state.copyWith(counter: state.counter + event.incrementSize));
    }));
  }
}
 



// class CounterBloc extends Bloc<CounterEvent, CounterState> {
//   int incrementSize = 1;
//   final ColorBloc colorbloc;
//   late final StreamSubscription colorStateSubscription;
//   CounterBloc(this.colorbloc) : super(CounterState.initial()) {
//     colorStateSubscription = colorbloc.stream.listen((ColorState colorState) {
//       if (colorState.color == Colors.red) {
//         incrementSize = 1;
//       } else if (colorState.color == Colors.green) {
//         incrementSize = 10;
//       } else if (colorState.color == Colors.blue) {
//         incrementSize = 100;
//       } else {
//         add(ChangeCounterEvent());
//         incrementSize = -100;
//       }
//     });

//     on<ChangeCounterEvent>(((event, emit) {
//       emit(state.copyWith(counter: state.counter + incrementSize));
//     }));
//   }

//   @override
//   Future<void> close() {
//     colorStateSubscription.cancel();
//     return super.close();
//   }
// }
