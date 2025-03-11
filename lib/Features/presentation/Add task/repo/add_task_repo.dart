import 'package:dartz/dartz.dart';
import 'package:to_do_app/Features/presentation/Add%20task/model/add_task_model.dart';

class AddTaskRepo {
  AddTaskModel? addTaskModel;
  Either<String, void> addTaskRepo<String>(AddTaskModel a) {
    try {
      addTaskModel = a;
      return right(null);
    } catch (e) {
      return left(e.toString() as String);
    }
  }
}
