import 'package:daniustub/bloc/danius_event.dart';
import 'package:daniustub/bloc/danius_state.dart';
import 'package:daniustub/repository/danius_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DaniusBloc extends Bloc<DaniusEvent, DaniusState>{
  final Daniusrepository repository;
  DaniusBloc({required this.repository}) : super(DaniusInitial()) {
    on<DaniusLoad>((event, emit) async {
      print('Загрузка');
      emit(DaniusLoading());
      try {
        print('Загруженно');
        final daniusList = await repository.fethTube();
        emit(DaniusLoaded(daniusList));
      } catch (e) {
        print('Ошибка');
        emit(DaniusError('Ошибка загрузки блока $e'));
      }
    });
  }
}