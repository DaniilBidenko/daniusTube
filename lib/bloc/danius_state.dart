import 'package:daniustub/data/danius_model.dart';
import 'package:equatable/equatable.dart';

abstract class DaniusState extends Equatable{
  @override
  List<Object> get props => [];
}

class DaniusInitial extends DaniusState{}

class DaniusLoading extends DaniusState {}

class DaniusLoaded extends DaniusState {
  final DaniusModel danius;
  DaniusLoaded(this.danius);
  @override
  List<Object> get props => [danius];
}

class DaniusError extends DaniusState {
  final String message;
  DaniusError(this.message);
  @override
  List<Object> get props => [message];
}