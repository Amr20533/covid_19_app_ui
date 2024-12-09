import 'package:covid_19_app/constants.dart';
import 'package:covid_19_app/widgets/DrawerWidget.dart';
import 'package:covid_19_app/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildHelpCard extends StatelessWidget {
  const BuildHelpCard({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:150.0,width:double.infinity,
      child:Stack(alignment:Alignment.bottomLeft,
        children:[ Container(
          padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*.4,top:20,right: 30),
          height:130,width:double.infinity,
          decoration:BoxDecoration(
            gradient:const LinearGradient(
              colors:[Color(0xFF60BE93),Color(0xFF1B8D59)],
            ),
            borderRadius:BorderRadius.circular(20.0),
          ),
          child: RichText(
            text:TextSpan(children:[
              TextSpan(text:'Dial 999 For Medical Help!\n',style:Theme.of(context).textTheme.headlineSmall!.copyWith(color:Colors.white)),
              TextSpan(text:'If any Symptoms appear',style:TextStyle(color:Colors.white.withOpacity(0.7))),
            ]),
          ),
        ),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal:15.0),
            child:SvgPicture.asset('assets/nurse.svg'),
          ),
          Positioned(top:15,right:10.0, child:SvgPicture.asset('assets/virus.svg')),
        ],
      ),
    );
  }
}
@override
AppBar buildAppBar(context){
  return AppBar(backgroundColor:kPrimaryColor.withOpacity(0.03),elevation:0,
    leading:IconButton(onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(context)=>DrawerWidget())),icon:SvgPicture.asset('assets/menu.svg'),
    ),
    actions: [
      IconButton(onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(context)=>buildSearchBox())), icon:SvgPicture.asset('assets/search.svg')),
    ],
  );
}