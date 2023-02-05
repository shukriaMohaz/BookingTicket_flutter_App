import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/double_text.dart';
import '../widget/icon_text_widget.dart';
import '../widget/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
         
         Gap(AppLayout.getHeight(40)),
          Text("What are \nyour looking for?", style: Styles.headlineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(20)),
          const TicketTabs(firtTab: "Airline tickets", secondTab: "Hotels",),
          Gap(AppLayout.getHeight(25)),
          const IconTextWidget(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(25)),
          const IconTextWidget(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
           padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(15),horizontal: AppLayout.getWidth(15)),
          decoration: BoxDecoration(
            color: Color(0xD91130CE),
           borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          ),
         child: Center(child: Text("Find tickets", style: Styles.textStyle.copyWith(color: Colors.white),))

    ),
          Gap(AppLayout.getHeight(40)),
          const DoubleText(bigText: "Upcoming fligts", smallText: "View all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(425),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius:1,
                      spreadRadius: 1

                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("img/sit.jpg")
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text("20% discount on the early booking of the flight. Don't miss out this chance" ,
                        style:  Styles.headlineStyle2,),

                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                        )   ,
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal:AppLayout.getHeight(16)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survay", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
                            Gap(AppLayout.getHeight(10)),
                            Text("Take the survery about our service and get discount", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18))
                          ],
                        ),
                      ),
                      Positioned(
                          right:-45,
                             top: -40,
                          child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18, color: Color(0xFF189999)),
                          color: Colors.transparent,
                        ),
                      ))
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: const Color(0xFFEC6545)
                    ),
                    child: Column(
                      children: [
                          Text("Take love", style: Styles.headlineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold, ),textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(15)),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '🥰', style: TextStyle(fontSize: 38)
                            ),
                            TextSpan(
                                text: '😍', style: TextStyle(fontSize: 50)
                            ),
                            TextSpan(
                                text: '😘', style: TextStyle(fontSize: 38)
                            ),
                          ]
                        ))

                      ],
                    ),
                  )
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
