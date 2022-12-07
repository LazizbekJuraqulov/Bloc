import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'new_event.dart';
part 'new_state.dart';

class NewBloc extends Bloc<NewEvent, NewState> {
  NewBloc() : super(NewInitial()) {
    on<IncrementEvent>((event, emit) {
      if (state is Counter) {
        final sts = this.state as Counter;
        emit(Counter(sts.couter + 1));
      } else if (state is NewInitial) {
        emit(Counter(0));
      }
    });
    on<DecrementEvent>((event, emit) {
      if (state is Counter) {
        final sts = this.state as Counter;
        emit(Counter(sts.couter - 1));
      } else if (state is NewInitial) {
        emit(Counter(0));
      }
    });

    on<IndexEvent>((event, emit) {
      if (state is Counter) {
        final stse = this.state as Counter;
        emit(Counter(event.currentindex));
      } else {
        emit(Counter(event.currentindex = 0));
      }
    });
  }
}
