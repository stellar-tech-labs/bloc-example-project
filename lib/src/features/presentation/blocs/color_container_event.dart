import 'package:equatable/equatable.dart';

abstract class ColorContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ColorContainerLeftTappedEvent extends ColorContainerEvent {}

class ColorContainerRightTappedEvent extends ColorContainerEvent {}

class ColorContainerResetEvent extends ColorContainerEvent {}
