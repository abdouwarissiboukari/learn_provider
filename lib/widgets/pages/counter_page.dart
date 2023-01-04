import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_provider/providers/count_provider.dart';
import 'package:learn_provider/widgets/simple_widgets/counter_text.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const Text(
          'Votre numéro choisi est le :',
        ),
        CounterText(),
        Row(
          children: [
            FloatingActionButton(
              onPressed: (() =>
                  context.read<CountProvider>().incrementCounter()),
              heroTag: 0,
              child: const Icon(Icons.add),
            ),
          ],
        )
      ],
    );
  }
}
