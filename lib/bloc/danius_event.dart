import 'package:equatable/equatable.dart';

abstract class DaniusEvent extends Equatable{
  @override
  List<Object> get props => [];
}

class DaniusLoad extends DaniusEvent{}