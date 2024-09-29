import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/committee/committee_pages/disec_page.dart';
import 'package:flutter_portfolio/view/committee/committee_pages/unsc_page.dart';
import 'package:flutter_portfolio/view/committee/committee_pages/ecosoc_page.dart';
import 'package:flutter_portfolio/view/committee/committee_pages/unhrc_page.dart';
class CommiteeModel {
  final String logoUrl;
  final String name;
  final Widget page;

  CommiteeModel({
    required this.logoUrl,    
    required this.name,
    required this.page,
  });
}

List<CommiteeModel> committeeList = [
  CommiteeModel(
    logoUrl: "https://picsum.photos/200",
    name: 'DISEC',
    page: const DISECPage(),
  ),
  CommiteeModel(
    logoUrl: "https://picsum.photos/201",
    name: 'UNSC',
    page: const UNSCPage(),
  ),
  CommiteeModel(
    logoUrl: "https://picsum.photos/202",
    name: 'ECOSOC',
    page: const ECOSOCPage(),
  ),
  CommiteeModel(
    logoUrl: "https://picsum.photos/203",
    name: 'UNHRC',
    page: const UNHRCPage(),
  ),
];
