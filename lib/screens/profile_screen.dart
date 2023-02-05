import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),

          children: [
            Gap(AppLayout.getHeight(15)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(86),
                  width: AppLayout.getHeight(86),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                    image: DecorationImage(
                      image: AssetImage(
                          "img/airplane-fact.jpg"
                      )
                    )
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Text("Book Tickets", style: Styles.headlineStyle1,),
                    Gap(AppLayout.getHeight(2)),
                    Text("Hargeysa", style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                    ),),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                        color: const Color(0xFFFEF4F3),
                      ),
                     padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3), vertical: AppLayout.getHeight(3)),
                     child: Row(
                       children: [
                         Container(
                           padding: EdgeInsets.all(3),
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color: const Color(0xFF526799),
                           ),
                           child: const Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 15,),
                         ),
                         Gap(AppLayout.getHeight(5)),
                         Text("Premium status", style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                          ),),
                         Gap(AppLayout.getHeight(5)),
                       ],
                     ),
                    ),
                  ]
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                        onTap: (){
                            print("onTapped");
                         },
                        child: Text("Edit",style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),))
                  ],
                )
              ],
            ),
            Gap(AppLayout.getHeight(15)),
            Divider(color: Colors.grey.shade300,),
            Gap(AppLayout.getHeight(8)),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                  ),
                ),
               Positioned(
                 right: -45,
                   top: -40,
                   child:  Container(
                 padding: EdgeInsets.all(AppLayout.getHeight(30)),
                 decoration: BoxDecoration(
                   color: Colors.transparent,
                     shape: BoxShape.circle,
                     border: Border.all(width: 18, color: Color(0xFF264CD2))
                 ),
               )),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25), vertical: AppLayout.getHeight(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      CircleAvatar(
                        child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,  color:  Styles.primaryColor, size: 27,),
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                      ),
                      Column(
                        children: [
                          Text("You\'v got a new award", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                          Text("You\'v got a new award", style: Styles.headlineStyle4.copyWith(fontWeight: FontWeight.w200, color: Colors.white.withOpacity(0.9), fontSize: 16),),

                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Text("Accumulated miles", style: Styles.headlineStyle2,),
            Gap(AppLayout.getHeight(15)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  )
                ]
              ),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(15)),
                  Text("192802", style: TextStyle(fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600),),
                  Gap(AppLayout.getHeight(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Miles Accrued", style: Styles.headlineStyle4.copyWith(fontSize: 16),),
                      Text("23 March 2023", style: Styles.headlineStyle4.copyWith(fontSize: 16),),

                    ],
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Divider(color: Colors.grey.shade300,),
                  Gap(AppLayout.getHeight(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(firstText: "23 042", secondText: "miles", alignment: CrossAxisAlignment.start,isColor: false,),
                      ColumnLayout(firstText: "Airline CO", secondText: "Received from", alignment: CrossAxisAlignment.end,isColor: false,),

                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(firstText: "24", secondText: "miles", alignment: CrossAxisAlignment.start,isColor: false,),
                      ColumnLayout(firstText: "McDonals", secondText: "Received from", alignment: CrossAxisAlignment.end,isColor: false,),

                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(firstText: "52340", secondText: "miles", alignment: CrossAxisAlignment.start,isColor: false,),
                      ColumnLayout(firstText: "Exuma", secondText: "Received from", alignment: CrossAxisAlignment.end,isColor: false,),

                    ],
                  ),

                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            InkWell(
              onTap: (){
                print("Search more....");
              },
              child: Center(child: Text("How to get more miles", style: Styles.textStyle.copyWith(color:
              Styles.primaryColor,fontWeight: FontWeight.w500),)),
            ),
          ],

      ),
    );
  }
}
