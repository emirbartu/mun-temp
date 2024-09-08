import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/commitee/commitee.dart';
import 'package:flutter_portfolio/view/intro/introduction.dart';
import 'package:flutter_portfolio/view/main/main_view.dart';
import 'package:flutter_portfolio/view/projects/team_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
      Introduction(),
      TeamView(),
      Certifications(),
    ]);
  }
}