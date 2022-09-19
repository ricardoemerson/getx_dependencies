import 'package:get/get.dart';

import 'bindings_controller.dart';

class BindingsExample extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BindingsController>(
      () => BindingsController(name: 'Inicializado dentro do bindings.'),
    );
  }
}
