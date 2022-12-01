import 'package:flutter/material.dart';
import 'package:sa3ada/view/widget/home/carousel_widget.dart';
import 'package:sa3ada/view/widget/home/categories_home_widget.dart';
import '../../shared/sizes.dart';

import '../widget/home/login_bottom_nav_widget.dart';
import '../widget/ui_element/appbar_widget.dart';
import '../widget/ui_element/custom_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
        content: Scaffold(
            appBar: MainAppBar(title: '',),
            bottomNavigationBar: const LoginBottomNavBar(),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                  vertical: MySizes.verticalMargin,
                  horizontal: MySizes.horizontalMargin * 0.5),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                children: [
                  CarouselWidget(),
                  const CategoriesHomeWidget(),
                 
                ],
              ),
            )));
  }
}
