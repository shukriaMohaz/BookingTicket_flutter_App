import 'package:booking/screens/ticket_view.dart';
import 'package:booking/utils/app_info_list.dart';
import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_style.dart';
import 'package:booking/widget/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
          children: [ListView(
             padding: EdgeInsets.symmetric(horizontal:AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.headlineStyle1,),
              Gap(AppLayout.getHeight(20)),
             const TicketTabs(firtTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                        children: [
                          Column(
                            children: [
                              Text("Flutter DB                                                        5681881919", style: Styles.headlineStyle3,),
                              Gap(AppLayout.getHeight(5)),
                              Text("Pessanger                                                          passport", style: Styles.headlineStyle4,),
                            ],
                          )
                        ],
                    ),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Flutter DB", style: Styles.headlineStyle3,),
                            Gap(AppLayout.getWidth(250)),
                            Text("677 8889977", style: Styles.headlineStyle3)

                          ],
                        ),
                    Gap(AppLayout.getWidth(8)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Passenger", style: Styles.headlineStyle4,),
                        Gap(AppLayout.getWidth(250)),
                        Text(" Passport", style: Styles.headlineStyle4)

                      ],
                    ),

                      ],
                    )


                ),


            ],

          )]
    ),
    );
  }
}
