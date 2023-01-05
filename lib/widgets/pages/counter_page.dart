import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_provider/models/count_type.dart';
import 'package:learn_provider/providers/count_provider.dart';
import 'package:learn_provider/widgets/simple_widgets/count_button.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CountButton(
              type: CountType.decrement,
            ),
            CountButton(
              type: CountType.reset,
            ),
            CountButton(
              type: CountType.increment,
            ),
          ],
        )
      ],
    );
  }
}
