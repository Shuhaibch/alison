import 'package:alison/features/home/data/model/home_resp_model.dart';
import 'package:alison/features/home/domain/repository/home_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeController _controller;

  HomeBloc({
    required HomeController controller,
  })  : _controller = controller,
        super(HomeInitial()) {
  on<GetHomeDataEvent>(_onHomeDetails);
  }
  
  void _onHomeDetails(
      GetHomeDataEvent event, Emitter<HomeState> emit) async {
    emit(GetHomeDataLoading());
    try {
      final resp = await _controller.fetchData();
      if (resp['response'] == 'success') {
        emit(GetHomeDataSuccess( data: resp['data'] ));
      } else {
        emit(GetHomeDataError(errorMsg: resp['data']));
      }
    } catch (e) {
      print(e);
      emit(const GetHomeDataError(errorMsg: 'Error'));
    }
  }
}
