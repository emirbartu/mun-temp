import 'package:get/get.dart';

class CommitteeController extends GetxController {
  RxList<bool> hovers = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ].obs;

  final RxString selectedCommittee = 'DISEC'.obs;

  void onHover(int index, bool value) {
    hovers[index] = value;
  }

  void updateSelectedCommittee(String committee) {
    selectedCommittee.value = committee;
  }
}
