// ignore_for_file: file_names

abstract class AddTaskState {}

class AddTaskInitState extends AddTaskState {}

class AddTaskLoadingState extends AddTaskState {}

class AddTaskSuccessState extends AddTaskState {}

class AddTaskErrorState extends AddTaskState {
  late String error;
  AddTaskErrorState(this.error);
}
