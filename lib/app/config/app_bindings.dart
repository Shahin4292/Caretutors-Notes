import 'package:caretutors_task/features/note/presentation/controllers/note_controller.dart';
import 'package:caretutors_task/features/auth/presentation/controllers/auth_controller.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(NoteController());
  }
}