import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class CameraControllers extends GetxController {
  QRViewController? controller;
  RxBool flashStatus = false.obs; // Use RxBool for reactive boolean

  @override
  void onInit() {
    super.onInit();
    getFlashStatus(); // Call getFlashStatus when controller is initialized
  }

  Future<void> toggleFlash() async {
    await controller?.toggleFlash();
    getFlashStatus(); // Update flash status after toggling
  }

  Future<void> getFlashStatus() async {
    bool status = await controller?.getFlashStatus() ?? false;
    flashStatus.value = status;
  }
}
