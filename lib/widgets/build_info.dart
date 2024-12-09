import 'package:covid_19_app/constants.dart';
import 'package:covid_19_app/widgets/Line_report_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildInfo extends StatelessWidget {
  final String text;
  final String text3;
  final String expectedNum;
  final Color iconColor;
  final VoidCallback press;
  const BuildInfo({super.key, required this.text,this.text3 = 'people',required this.iconColor,required this.press,required this.expectedNum});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:press,
      child: Container(
        margin:const EdgeInsets.only(bottom:10.0),
        width:170,
        decoration:BoxDecoration(
            color:Colors.white,
            borderRadius:BorderRadius.circular(8.0)
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  // wrapped within an expanded widget to allow for small density device
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color:const Color(0xFFF9C00).withOpacity(0.12),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/running.svg",
                      height: 12,
                      width: 12,
                      color:iconColor,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    text,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        text: TextSpan(
                          style:const TextStyle(color: kTextColor),
                          children: [
                            TextSpan(
                              text: "$expectedNum \n",
                              style:
                              Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:text3,
                              style:const TextStyle(
                                fontSize: 12,
                                height: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  const Expanded(
                    child: LineReportChart(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
