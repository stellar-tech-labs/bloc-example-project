import 'package:example_bloc/src/core/constants/dimes.dart';
import 'package:example_bloc/src/core/extensions/extensions.dart';
import 'package:example_bloc/src/features/presentation/blocs/color_container_bloc.dart';
import 'package:example_bloc/src/features/presentation/blocs/color_container_event.dart';
import 'package:example_bloc/src/features/presentation/blocs/color_container_state.dart';
import 'package:example_bloc/src/features/presentation/widgets/colored_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorContainerPage extends StatelessWidget {
  const ColorContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorContainerBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Color Container Page'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(d_1),
          child: BlocBuilder<ColorContainerBloc, ColorContainerState>(
            builder: (context, state) {
              return Column(
                children: [
                  Row(
                    children: [
                      ColoredContainer(
                          onTap: () => context
                              .read<ColorContainerBloc>()
                              .add(ColorContainerLeftTappedEvent()),
                          color:
                              _setColor(state.leftContainerCount, isLeft: true),
                          count: state.leftContainerCount),
                      const SizedBox(
                        width: d_1,
                      ),
                      ColoredContainer(
                          onTap: () => context
                              .read<ColorContainerBloc>()
                              .add(ColorContainerRightTappedEvent()),
                          color: _setColor(state.rightContainerCount),
                          count: state.rightContainerCount),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: context.width - d_2,
                    height: d_coloredContainerHeight,
                    color: ((state.leftContainerCount ==
                                state.rightContainerCount) &&
                            state.leftContainerCount == 2)
                        ? Colors.blueGrey
                        : Colors.greenAccent,
                  ),
                  ElevatedButton(
                    onPressed: () => context
                        .read<ColorContainerBloc>()
                        .add(ColorContainerResetEvent()),
                    child: const Text('Reset'),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Color _setColor(int currentCount, {bool? isLeft}) {
    Map<int, Color> colorMapper;
    if (isLeft ?? false) {
      colorMapper = {
        0: Colors.red,
        1: Colors.green,
        2: Colors.blue,
      };
    } else {
      colorMapper = {
        0: Colors.purple,
        1: Colors.pink,
        2: Colors.yellow,
      };
    }

    if (currentCount > 2) {
      currentCount = 2;
    }
    return colorMapper[currentCount]!;
  }
}
