import 'package:booking/screens/ticket_view.dart';
import 'package:booking/utils/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../widget/double_text.dart';
import 'hotel_screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:  [
                        Text("Good Morning", style: Styles.textStyle,),
                        const Gap(5),
                        Text("Book Tickets", style: Styles.headlineStyle1,),
                     ],
                   ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.circular(10.0),
                        image:  const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                              "img/airplane-fact.jpg"
                          )
                        )
                      )
                    )
                  ],
                ),
                const Gap(10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                      Text("Search", style: Styles.headlineStyle4,)
                    ],
                  ),
                ),
                const Gap(20),
                const DoubleText(bigText: "Upcoming fligts", smallText: "View all")
              ],
            ),
          ),
          const Gap(15),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           padding: EdgeInsets.only(left: 20),
           child: Row(
             children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket, isColor: null,)).toList(),
           ),
         ),
          const Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headlineStyle2,),
                InkWell(
                    onTap: (){
                      print("You are tapped");
                    },
                    child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child:  Row(
              children:hotelList.map((Singlehotel)=> HotelScreen(hotel: Singlehotel)).toList(),
      ),)

        ],
      ),
    );
  }
}
