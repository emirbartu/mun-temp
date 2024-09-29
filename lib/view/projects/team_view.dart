import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_portfolio/view_model/getx_controllers/team_controller.dart';

class TeamView extends StatelessWidget {
  final TeamController controller = Get.put(TeamController());
  final RxBool showAcademy = true.obs;

  TeamView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => showAcademy.value = true,
              child: const Text('Academy'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => showAcademy.value = false,
              child: const Text('Organization'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Obx(() => showAcademy.value ? _buildAcademySection() : _buildOrganizationSection()),
      ],
    );
  }

  Widget _buildAcademySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Academy Team', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        _buildTeamGrid(),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildOrganizationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Organization Team', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        _buildTeamGrid(),
        const SizedBox(height: 20),
        Image.asset('assets/images/yafl.png', width: 300, height: 200, fit: BoxFit.cover),
      ],
    );
  }

  Widget _buildTeamGrid() {
    return GridView.builder(
      shrinkWrap: true,
      // Remove or update the physics property
      // physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        return Obx(() => MouseRegion(
          onEnter: (_) => controller.onHover(index, true),
          onExit: (_) => controller.onHover(index, false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            color: controller.hovers[index] ? Colors.blue : Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://picsum.photos/id/${index + 1}/100/100', // Using Lorem Picsum for images
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                Text('Team Member ${index + 1}'),
              ],
            ),
          ),
        ));
      },
    );
  }
}
