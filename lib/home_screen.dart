import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_basic/cubit/counter_number_cubit.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterNumberCubit, CounterNumberState>(
              builder: (_, cubitState) => Text(
                (cubitState is CounterNumberStateFilled)
                    ? "${cubitState.value}"
                    : "-",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            RaisedButton(
              padding: EdgeInsets.all(8),
              child: Text('Increment'),
              onPressed: () {
                context.bloc<CounterNumberCubit>().cubitIncrement(1);
              },
            )
          ],
        ),
      ),
    );
  }
}
