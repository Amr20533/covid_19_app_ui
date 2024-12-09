import 'package:covid_19_app/constants.dart';
import 'package:flutter/material.dart';
class buildSearchBox extends StatelessWidget {
  var textController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildSearchAppBar(context),
      body:Column(
        children: [
          Container(
            padding:const EdgeInsets.all(40.0),
            width:double.infinity,
            height:60.0,
            child: TextFormField(
              controller:textController,
              decoration:InputDecoration(
                hintText:'Search',
                prefix:Icon(Icons.search),
              ),
            ),
          )
        ],
      ),
    );
  }
}
AppBar buildSearchAppBar(context){
  return AppBar(backgroundColor:kPrimaryColor.withOpacity(0.03),elevation:0,
    leading:IconButton(onPressed:()=>Navigator.pop(context),icon:Icon(Icons.arrow_back_ios,color:kPrimaryColor,),
    ),
  );
}