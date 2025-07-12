part of 'model_run_cubit.dart';

@immutable
sealed class ModelRunState {}

final class ModelRunInitial extends ModelRunState {}
final class ModelRunSuccess extends ModelRunState {}
final class ModelRunLoading extends ModelRunState {}
final class ModelRunFailure extends ModelRunState {}
final class ModelRunStopped extends ModelRunState {}
