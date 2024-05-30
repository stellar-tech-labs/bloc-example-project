import 'package:example_bloc/src/features/presentation/blocs/color_container_event.dart';
import 'package:example_bloc/src/features/presentation/blocs/color_container_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorContainerBloc
    extends Bloc<ColorContainerEvent, ColorContainerState> {
  ColorContainerBloc()
      : super(
          const ColorContainerState(
              leftContainerCount: 0, rightContainerCount: 0),
        ) {
    on<ColorContainerLeftTappedEvent>(
      (event, emit) => emit(
          state.copyWith(leftContainerCount: state.leftContainerCount + 1)),
    );

    on<ColorContainerRightTappedEvent>(
      (event, emit) => emit(
          state.copyWith(rightContainerCount: state.rightContainerCount + 1)),
    );

    on<ColorContainerResetEvent>(
      (event, emit) =>
          emit(state.copyWith(leftContainerCount: 0, rightContainerCount: 0)),
    );
  }
}
