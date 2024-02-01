import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_project/providers/counter_state_provider.dart';
import 'package:state_management_project/screens/counter_view.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final CounterStateProvider _counterStateProvider = CounterStateProvider();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider.value(value: _counterStateProvider)],
            child: const MaterialApp(
              title: 'State Management ',
              home: CounterView(),
            ),
    );

  }
}

