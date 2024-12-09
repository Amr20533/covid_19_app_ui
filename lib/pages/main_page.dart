import 'package:covid_19_app/constants.dart';
import 'package:covid_19_app/pages/details_page.dart';
import 'package:covid_19_app/widgets/DrawerWidget.dart';
import 'package:covid_19_app/widgets/build_info.dart';
import 'package:covid_19_app/widgets/build_info_card.dart';
import 'package:covid_19_app/widgets/build_preventions.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:DrawerWidget(),
        appBar:buildAppBar(context),
      body:SingleChildScrollView(
        child: Column(crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Container(
              padding:const EdgeInsets.only(top:20,bottom:20,left:20,right: 20),
              // width:double.infinity,
              decoration:BoxDecoration(
                color:kPrimaryColor.withOpacity(0.12),
                borderRadius:const BorderRadius.only(bottomLeft:Radius.circular(50),bottomRight:Radius.circular(50)),

              ),
              child:
              Wrap(
                // direction: Axis.horizontal,
                children:[ Row(children: [
                  BuildInfo(press:(){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>const DetailsPage(title:'Confirmed Cases')));
                  },iconColor:const Color(0xFFFF9C00),text:'Confirmed Cases',expectedNum:'1067',),
                  const Spacer(),
                  BuildInfo(press:(){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>const DetailsPage(title:'Total Death')));
                  },iconColor:const Color(0xFFFF2D55),text:'Total Death',expectedNum:'75',),
                ],),
                  const SizedBox(width: 5,),
                  Row(children: [
                    BuildInfo(press:(){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>const DetailsPage(title:'Total Recovered')));
                    },iconColor:const Color(0xFF50E3C2),text:'Total Recovered',expectedNum:'689',),
                    const Spacer(),
                    BuildInfo(press:(){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>const DetailsPage(title:'New Cases')));
                    },iconColor:const Color(0xFF5856D6),text:'New Cases',expectedNum:'75',),
                  ],),
                ],
              ),

            ),
            const SizedBox(height:20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10.0),
              child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text('Preventions',style:Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height:20.0),
                  buildPreventions(),
                  const SizedBox(height:40.0),
                  const BuildHelpCard(),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}



