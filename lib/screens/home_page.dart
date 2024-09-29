import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/screens/largescreens/desktop_layout_page.dart';
import 'package:my_portfolio/screens/mobile/mobile_layout_page.dart';
import 'package:my_portfolio/screens/tablet/tablet_layout_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 950) {
        return const DesktopLayout();
      } else if (constraints.maxWidth > 600) {
        return const TabletLayout();
      } else {
        return const MobileLayout();
      }
    });
  }
}
