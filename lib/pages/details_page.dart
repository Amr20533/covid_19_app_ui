import 'package:covid_19_app/constants.dart';
import 'package:covid_19_app/widgets/DrawerWidget.dart';
import 'package:covid_19_app/widgets/weekly_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key,required this.title, this.value = '571'});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DrawerWidget(),
      appBar:buildDetailsAppBar(context),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
               padding:const EdgeInsets.symmetric(horizontal:20,vertical: 25),
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius:BorderRadius.circular(20.0),
                  boxShadow:[BoxShadow(
                    offset:const Offset(0,21),
                    blurRadius:53,
                    color:Colors.black.withOpacity(0.05)
                  )],
                ),
                child:Column(crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    buildCaseHeader(context,title:title),
                    const SizedBox(height:10.0),
                    buildCaseNumber(context,value),
                    const Text('From Health Center',style:TextStyle(fontSize:12,color:kTextLightColor,fontWeight:FontWeight.w200,)),
                    const SizedBox(height:20.0),
                    const weeklyChart(),
                    const SizedBox(height:20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:40.0),
                      child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        percentageText(percentage:'6.43%',title:'From Last Week'),
                        percentageText(percentage:'9.43%',title:'Recovery Rate'),
                      ],),
                    ),
                  ],),
              ),
              const SizedBox(height:20.0),
              Column(
                children: [
                  Container(
                    padding:const EdgeInsets.symmetric(horizontal:20,vertical:25),
                    decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(20.0),
                        color:Colors.white,
                        boxShadow:[BoxShadow(offset:const Offset(0,21),color:Colors.black.withOpacity(0.05),blurRadius:53)]
                    ),
                    child:Column(
                      children: [
                        buildCaseHeader(context,title:'Global Map'),
                         const SizedBox(height:20,),
                         SvgPicture.asset('assets/map.svg'),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
AppBar buildDetailsAppBar(BuildContext context,){
  return AppBar(backgroundColor:Colors.white.withOpacity(0.03),elevation:0,
    leading:IconButton(icon:const Icon(Icons.arrow_back_ios,color:kPrimaryColor,),onPressed: ()=>Navigator.pop(context),),
    actions:[IconButton(onPressed:(){},icon:SvgPicture.asset('assets/search.svg'))],
  );
}
Row buildCaseNumber(BuildContext context,String value){
  return Row(
    children: [
      Text(value,style:Theme.of(context).textTheme.headlineMedium!.copyWith(color:kPrimaryColor,height:1.2),),
      const SizedBox(width:15.0,),
      const Text('5.9%',style:TextStyle(color:kPrimaryColor)),
      const SizedBox(width:5.0),
      SvgPicture.asset('assets/increase.svg'),
    ],
  );
}
Row buildCaseHeader(BuildContext context,{required String title}){
  return Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children:[
      Text(title,style:Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight:FontWeight.w200)),
      IconButton(onPressed:(){},icon: SvgPicture.asset('assets/more.svg')),
    ],
  );
}
RichText percentageText({required String percentage,required String title}){
  return RichText(text:TextSpan(
    children:[
      TextSpan(text:'$percentage \n',style:const TextStyle(color:kPrimaryColor,fontWeight:FontWeight.w600,fontSize:20)),
      TextSpan(text:title,style:const TextStyle(color:kTextMediumColor,height:1.5)),
    ]
  ));
}