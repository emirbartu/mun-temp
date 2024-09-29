import 'package:get/get.dart';
import 'package:flutter_portfolio/model/team_model.dart';

class TeamController extends GetxController {
  var teamMembers = <TeamModel>[].obs;
  var hovers = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchTeamMembers();
  }

  void fetchTeamMembers() {
    // Fetching data from Lorem Picsum
    teamMembers.value = List.generate(9, (index) => TeamModel(
      imageUrl: 'https://picsum.photos/200?random=${index + 1}', // Updated to use Lorem Picsum
      name: 'Team Member ${index + 1}',
      role: 'Role ${index + 1}',
    ));
    hovers.value = List.generate(9, (_) => false);
  }

  void onHover(int index, bool isHovering) {
    hovers[index] = isHovering;
  }
}