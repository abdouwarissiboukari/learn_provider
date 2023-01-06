import 'package:flutter/material.dart';
import 'package:learn_provider/providers/color_provider.dart';
import 'package:learn_provider/widgets/simple_widgets/color_circle.dart';
import 'package:provider/provider.dart';

class ColorPage extends StatelessWidget {
  List<MaterialColor> colors = Colors.primaries;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Couleur actuelle"),
              ColorCircle(color: context.watch<ColorProvider>().color),
            ],
          ),
          const Divider(),
          Expanded(
            child: GridView.builder(
                itemCount: colors.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: ((context, index) {
                  return Center(
                    child: ColorCircle(color: colors[index]),
                  );
                })),
          )
        ],
      ),
    );
  }
}
