import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view_model/responsive.dart';
import 'package:flutter_portfolio/view_model/getx_controllers/commitee_controller.dart';
import 'package:get/get.dart';
import 'navigation_button_list.dart';
import '../../committee/committee_pages/disec_page.dart';
import '../../committee/committee_pages/ecosoc_page.dart';
import '../../committee/committee_pages/unhrc_page.dart';
import '../../committee/committee_pages/unsc_page.dart';

class TopNavigationBar extends StatelessWidget {
  TopNavigationBar({super.key});

  final CommitteeController controller = Get.put(CommitteeController());
  final List<String> committees = ['Overview', 'DISEC', 'ECOSOC', 'UNHRC', 'UNSC'];

  void navigateToCommitteePage(String committee) {
    controller.selectedCommittee.value = committee;
    if (committee == 'Overview') {
      // Stay on the current page, which now serves as the overview
      Get.back();
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

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (!Responsive.isLargeMobile(context))
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const NavigationButtonList(),
                  const SizedBox(width: 20),
                  _buildCommitteesDropdown(context),
                ],
              ),
            )
          else
            _buildCommitteesDropdown(context),
        ],
      ),
    );
  }

  Widget _buildCommitteesDropdown(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: navigateToCommitteePage,
      itemBuilder: (BuildContext context) => [
        PopupMenuItem<String>(
          value: 'Overview',
          child: Text(
            'Overview',
            style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color),
          ),
        ),
        const PopupMenuDivider(),
        ...committees.where((committee) => committee != 'Overview').map((String committee) => PopupMenuItem<String>(
          value: committee,
          child: Text(
            committee,
            style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color),
          ),
        )).toList(),
      ],
      color: Theme.of(context).scaffoldBackgroundColor,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Theme.of(context).primaryColor, width: 2),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Committees',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.arrow_drop_down,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
