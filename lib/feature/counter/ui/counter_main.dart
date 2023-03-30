import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_week6_bloc/feature/counter/bloc/counter_bloc.dart';
import 'package:flutter_week6_bloc/feature/counter/ui/counter_page.dart';

class CounterMain extends StatelessWidget{
  const CounterMain({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
    create: (_)=>CounterBloc(),
    child: const CounterPage(),
  );
  }

}