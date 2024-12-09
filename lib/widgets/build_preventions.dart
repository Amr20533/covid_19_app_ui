import 'package:covid_19_app/widgets/prevention_card.dart';
import 'package:flutter/material.dart';

Row buildPreventions(){
  return const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      PreventionCard(src:'assets/hand_wash.svg',title:'Wash Hands'),
      PreventionCard(src:'assets/use_mask.svg',title:'Use Mask'),
      PreventionCard(src:'assets/Clean_Disinfect.svg',title:'Clean Disinfect'),
    ],
  );
}
