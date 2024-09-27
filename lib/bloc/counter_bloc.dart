import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter =0 ;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      
      if(event is Incrmeant){
        counter +=1 ;
        emit(CounterChangeState(counter: counter));
      }
      else if (event is Decrmant){
        counter-= 1;
        emit(CounterChangeState(counter: counter));
      }
      else{
        counter=0;
        emit(CounterChangeState(counter: counter));
      }
    });
  }
}
