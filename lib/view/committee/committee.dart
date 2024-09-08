import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view_model/getx_controllers/commitee_controller.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:flutter_portfolio/view/committee/components/commitee_grid.dart';
import 'package:get/get.dart';
import '../../res/constants.dart';
import '../../view_model/responsive.dart';
import 'committee_pages/disec_page.dart';
import 'committee_pages/ecosoc_page.dart';
import 'committee_pages/unhrc_page.dart';
import 'committee_pages/unsc_page.dart';

class Certifications extends StatelessWidget {
  final controller = Get.put(CommitteeController());
  Certifications({super.key});

  final List<String> committees = ['DISEC', 'ECOSOC', 'UNHRC', 'UNSC'];

  void navigateToCommitteePage(String committee) {
    if (committee == 'Overview') {
      controller.selectedCommittee.value = 'Overview';
      // Stay on the current page, which now serves as the overview
      return;
    }
    switch (committee) {
      case 'DISEC':
        Get.to(() => const DISECPage());
        break;
      case 'ECOSOC':
        Get.to(() => const ECOSOCPage());
        break;
      case 'UNHRC':
        Get.to(() => const UNHRCPage());
        break;
      case 'UNSC':
        Get.to(() => const UNSCPage());
        break;
    }
  }

  Widget buildOverviewPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(prefix: 'Committees ', title: 'Overview'),
        const SizedBox(height: defaultPadding),
        const Text('Welcome to the Committees Overview. Here you can find information about all our committees:'),
        const SizedBox(height: defaultPadding),
        ...committees.map((committee) => ListTile(
          title: Text(committee),
          onTap: () => navigateToCommitteePage(committee),
        )).toList(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.selectedCommittee.value == 'Overview'
          ? buildOverviewPage()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isLargeMobile(context))
                  const SizedBox(height: defaultPadding),
                TitleText(prefix: 'Committee ', title: controller.selectedCommittee.value),
                const SizedBox(height: defaultPadding),
                Expanded(
                  child: Responsive(
                    desktop: CommiteeGrid(crossAxisCount: 3, ratio: 1.5),
                    extraLargeScreen: CommiteeGrid(crossAxisCount: 4, ratio: 1.6),
                    largeMobile: CommiteeGrid(crossAxisCount: 1, ratio: 1.8),
                    mobile: CommiteeGrid(crossAxisCount: 1, ratio: 1.4),
                    tablet: CommiteeGrid(ratio: 1.7, crossAxisCount: 2),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
