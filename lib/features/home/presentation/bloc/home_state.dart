part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class GetHomeDataSuccess extends HomeState {
  final HomeRespModel data;

  const GetHomeDataSuccess({required this.data});
}

final class GetHomeDataError extends HomeState {
  final String errorMsg;

  const GetHomeDataError({required this.errorMsg});
}

final class GetHomeDataLoading extends HomeState {}
