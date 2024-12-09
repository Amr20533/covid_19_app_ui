import 'package:covid_19_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreventionCard extends StatelessWidget {
  final String src;
  final String title;
  const PreventionCard({super.key, required this.src,required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(src),
        Text(title,style:Theme.of(context).textTheme.bodyMedium!.copyWith(color:kPrimaryColor),)
      ],
    );
  }
}