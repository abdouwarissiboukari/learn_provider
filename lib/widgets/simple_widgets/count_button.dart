import 'package:flutter/material.dart';
import 'package:learn_provider/models/count_type.dart';
import 'package:provider/provider.dart';

import '../../providers/count_provider.dart';

class CountButton extends StatelessWidget {
  CountType type;

  CountButton({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (() => handlerAction(context)),
      heroTag: type,
      child: type.getIcon(),
    );
  }

  handlerAction(BuildContext context) {
    switch (type) {
      case CountType.increment:
        context.read<CountProvider>().incrementCounter();
        break;
      case CountType.decrement:
        context.read<CountProvider>().decrementCounter();
        break;
      case CountType.reset:
        context.read<CountProvider>().resetCounter();
        break;
    }
  }
}
