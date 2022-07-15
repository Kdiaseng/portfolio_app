import 'package:flutter/material.dart';
import 'package:portfolio_app/page/components/area_interest_component.dart';
import 'package:portfolio_app/page/components/end_drawer_component.dart';
import 'package:portfolio_app/page/components/header_mobile_component.dart';
import 'package:portfolio_app/page/components/presentation_component.dart';
import 'package:portfolio_app/page/components/presentation_mobile_component.dart';
import 'package:portfolio_app/util/responsive.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'components/abilities_component.dart';
import 'components/about_component.dart';
import 'components/academic_component.dart';
import 'components/experience_component.dart';
import 'components/header_component.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: LandingPageDesktop(),
      mobile: LandingPageMobile(),
    );
  }
}

class LandingPageDesktop extends StatelessWidget {
  LandingPageDesktop({Key? key}) : super(key: key);
  final ItemScrollController itemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    List<Widget> components = [
      HeaderComponent(onClick: _scrollTo),
      const PresentationComponent(),
      const AboutComponent(),
      const AcademicComponent(),
      const ExperienceComponent(),
      const AbilitiesComponent(),
      const AreasInterestComponent()
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollablePositionedList.builder(
        itemCount: components.length,
        itemScrollController: itemScrollController,
        itemBuilder: (context, index) {
          return components[index];
        },
      ),
    );
  }

  void _scrollTo(int index) {
    itemScrollController.scrollTo(
        index: index,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInExpo);
  }
}

class LandingPageMobile extends StatelessWidget {
  LandingPageMobile({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  final ItemScrollController itemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    List<Widget> components = [
      HeaderMobileComponent(
        onClick: () => _key.currentState?.openEndDrawer(),
      ),
      const PresentationMobileComponent(),
      const AboutComponent(),
      const AcademicComponent(),
      const ExperienceComponent(),
     const AbilitiesComponent(),
      const AreasInterestComponent()
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
      ),
    );
  }

  void _scrollTo(int index) {
    itemScrollController.scrollTo(
        index: index,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInExpo);
  }
}
