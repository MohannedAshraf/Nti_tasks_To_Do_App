import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/Features/presentation/Add%20task/model/add_task_model.dart';
import 'package:to_do_app/Features/presentation/Add%20task/repo/add-task_state.dart';
import 'package:to_do_app/Features/presentation/Add%20task/repo/add_task_repo.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitState());
  static AddTaskCubit get(context) => BlocProvider.of(context);
  final AddTaskRepo addTaskRepo = AddTaskRepo();

  void addTask(AddTaskModel a) async {
    emit(AddTaskLoadingState());
    await Future.delayed(Duration(microseconds: 1000));
    Either<String, void> res = addTaskRepo.addTaskRepo(a);
    res.fold(
      (String error) {
        emit(AddTaskErrorState(error));
      },
      (r) {
        emit(AddTaskSuccessState());
      },
    );
  }
}
