part of 'play_bloc.dart';

abstract class PlayState extends Equatable {
  const PlayState();  

  @override
  List<Object> get props => [];
}
class PlayInitial extends PlayState {}
