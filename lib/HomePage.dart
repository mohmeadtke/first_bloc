import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_bloc/bloc/counter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 70, 128),
      appBar: AppBar(title: Center(child: Text("appbar")),),
      body:  Stack(
        children: [
          Align(alignment: AlignmentDirectional.bottomEnd,
            child: ElevatedButton(onPressed: (){
              BlocProvider.of<CounterBloc>(context).add(Incrmeant());}
              , child: const Icon(Icons.add))),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Align(alignment: AlignmentDirectional.bottomEnd,
              child: ElevatedButton(onPressed: (){
                BlocProvider.of<CounterBloc>(context).add(Resat() );
              }, child: const Icon(Icons.exposure_zero))),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Align(alignment: AlignmentDirectional.bottomEnd,
              child: ElevatedButton(onPressed: (){
                BlocProvider.of<CounterBloc>(context).add(Decrmant());
              }, child: const Icon(Icons.delete))),
          ),
         
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              if (state is CounterInitial) {
                return
                const Center(child: Text("0",style: TextStyle(color: Colors.red,fontSize: 30)),);
              } else if (state is CounterChangeState) {
                return 
                Center(child: Text(state.counter.toString() ,style: TextStyle(color: Colors.red,fontSize: 30),),);
              }
              return const SizedBox();
            }
          ),
        ],
      )
    );
  }
}