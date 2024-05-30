import 'package:equatable/equatable.dart';

class ColorContainerState extends Equatable {
  const ColorContainerState(
      {required this.leftContainerCount, required this.rightContainerCount});
  final int leftContainerCount;
  final int rightContainerCount;

  ColorContainerState copyWith(
      {int? leftContainerCount, int? rightContainerCount}) {
    return ColorContainerState(
        leftContainerCount: leftContainerCount ?? this.leftContainerCount,
        rightContainerCount: rightContainerCount ?? this.rightContainerCount);
  }

  @override
  List<Object?> get props => [leftContainerCount, rightContainerCount];
}
