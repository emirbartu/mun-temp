import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/committee/committee_pages/disec_page.dart';
import 'package:flutter_portfolio/view/committee/committee_pages/unsc_page.dart';
import 'package:flutter_portfolio/view/committee/committee_pages/ecosoc_page.dart';
import 'package:flutter_portfolio/view/committee/committee_pages/unhrc_page.dart';
import 'package:flutter_portfolio/view_model/getx_controllers/commitee_controller.dart';
import 'navigation_button.dart';
import 'package:get/get.dart';

class NavigationButtonList extends StatelessWidget {
  final CommitteeController committeeController = Get.put(CommitteeController());
  final PageController pageController = Get.put(PageController()); // Use the correct controller
  final List<String> committees = ['Overview', 'DISEC', 'ECOSOC', 'UNHRC', 'UNSC'];

  NavigationButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              NavigationTextButton(
                onTap: () {
                  pageController.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                },
                text: 'Home',
              ),
              NavigationTextButton(
                onTap: () {
                  pageController.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                },
                text: 'Our Team',
              ),
              NavigationTextButton(
                onTap: () {
                  pageController.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                },
                text: 'Committees',
              ),
              NavigationTextButton(
                onTap: () {
                  pageController.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                },
                text: 'Our Sponsors',
              ),
              _buildCommitteesDropdown(context),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCommitteesDropdown(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String committee) {
        committeeController.selectedCommittee.value = committee;
        if (committee == 'Overview') {
          Get.back();
          return;
        }
        switch (committee) {
          case 'DISEC':
            Get.to(() => DISECPage());
            break;
          case 'ECOSOC':
            Get.to(() => ECOSOCPage());
            break;
          case 'UNHRC':
            Get.to(() => UNHRCPage());
            break;
          case 'UNSC':
            Get.to(() => UNSCPage());
            break;
        }
      },
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
