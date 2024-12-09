import 'package:covid_19_app/widgets/DrawerWidget.dart';
import 'package:covid_19_app/widgets/build_info_card.dart';
import 'package:flutter/material.dart';

class aboutPage extends StatelessWidget {
  const aboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DrawerWidget(),
      appBar:buildAppBar(context),
    );
  }
}
