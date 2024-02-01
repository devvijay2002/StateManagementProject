import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_project/providers/counter_state_provider.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
        centerTitle: true,
      ),
      body: Consumer<CounterStateProvider>(builder: (context, value, child){
         return Center(
           child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  value.count.toString(),
                  style: const TextStyle(fontSize: 40, color: Colors.black),
                ),

                ElevatedButton(
                  onPressed: () {
                   value.increamentCount();
                  },
                  child: const Text("Increase Button"),
                ),

                 ElevatedButton(
                  onPressed: () {
                    value.decreamentCount();
                  },
                  child: const Text("Decrease Button"),
                ),

                const SizedBox(height: 20),
              ],
            ),
         );

    }
      ),

    );
  }
}
