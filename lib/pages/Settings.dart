import 'package:covid_19_app/widgets/DrawerWidget.dart';
import 'package:covid_19_app/widgets/build_info_card.dart';
import 'package:flutter/material.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DrawerWidget(),
      appBar:buildAppBar(context),
    );
  }
}
