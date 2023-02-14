part of 'timer_bloc.dart';

abstract class TimerState extends Equatable {
  final int duration;

  const TimerState(this.duration);

  @override
  List<Object?> get props => [duration];
}

class TimerInitial extends TimerState {
  const TimerInitial(super.duration);

  @override
  String toString() {
    return 'TimerInitial{ duration : $duration}';
  }
}

class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);


  @override
  String toString() {
    return 'TimerRunPause { duration : $duration}';
  }
}

class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration);



  @override
  String toString() {
    return 'TimerRunInProgress { duration : $duration}';
  }
}

class TimerRunCompleted extends TimerState {
  const TimerRunCompleted() : super(0);
}
