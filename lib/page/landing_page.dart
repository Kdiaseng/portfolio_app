import 'package:flutter/material.dart';
import 'package:portfolio_app/page/components/end_drawer_component.dart';
import 'package:portfolio_app/page/components/header_mobile_component.dart';
import 'package:portfolio_app/page/components/presentation_component.dart';
import 'package:portfolio_app/page/components/presentation_mobile_component.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'components/about_component.dart';
import 'components/academic_component.dart';
import 'components/experience_component.dart';
import 'components/header_component.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final ItemScrollController itemScrollController = ItemScrollController();
  static const int screenMobile = 600;

  @override
  Widget build(BuildContext context) {
    List<Widget> components = [
      _generateHeader(),
      const PresentationMobileComponent(),
      const AboutComponent(),
      const AcademicComponent(),
      const ExperienceComponent(),
    ];

    return Scaffold(
        key: _key,
        backgroundColor: Colors.white,
        endDrawer: EndDrawerComponent(onClick: _scrollTo),
        body: ScrollablePositionedList.builder(
          itemCount: components.length,
          itemScrollController: itemScrollController,
          itemBuilder: (context, index) {
            return components[index];
          },
        ));
  }

  Widget _generateHeader() {
    return LayoutBuilder(
      builder: (_, constraints) {
        bool isMobileScreen = (constraints.maxWidth <= screenMobile);
        Widget header = HeaderComponent(onClick: _scrollTo);

        if (isMobileScreen) {
          header = HeaderMobileComponent(
            onClick: () => _key.currentState?.openEndDrawer(),
          );
        }
        return header;
      },
    );
  }

  void _scrollTo(int index) {
    itemScrollController.scrollTo(
        index: index,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInExpo);
  }
}
