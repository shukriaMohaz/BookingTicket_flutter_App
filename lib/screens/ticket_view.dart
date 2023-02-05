import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_style.dart';
import 'package:booking/widget/ticket_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, required this.isColor }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(169),
      child: Container(
        margin:  EdgeInsets.only(right: AppLayout.getHeight(16),),
        child: Column(
          children: [
            Container(
              decoration:  BoxDecoration(
                color: isColor==null? Color(0xFF526799): Colors.white,
                borderRadius:  BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                topRight: Radius.circular(21))
              ),

              padding:  EdgeInsets.all(AppLayout.getHeight(16),),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("HRG",style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3,),
                      Expanded(child: Container()),
                      TicketContainer(isColor: true,),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(

                            builder: (BuildContext Context , BoxConstraints Constraints) {
                              print("the width is${Constraints.constrainWidth()}");
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate((Constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                  width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(color: isColor==null? Colors.white:Colors.grey.shade300),),
                                )),
                              );
                            },
                          ),
                        ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor==null? Colors.white: Color(0xFF8ACCF7)),)),
                        ]
                      )),

                      TicketContainer(isColor: true,),
                      Expanded(child: Container()),
                      Text("ADA",style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3,)

                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100), child: Text("Hargeisa",  style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4,),
                      ),
                      Text("8H 30M", style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4,),
                      SizedBox(
                        width: AppLayout.getWidth(100), child: Text("Addis_ababa",textAlign: TextAlign.end, style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4,),
                      ),
                    ],
                  )

                ],
              ),
            ),
            Container(
              color: isColor==null?  Styles.orangeColor:Colors.white, //const Color(0xFFF37867),
              child: Row(
                children:  [
               SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:  BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints ) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>  SizedBox(
                          width: 5, height: 1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color:isColor==null?Colors.grey.shade200: Colors.white,
                            ),
                          ),
                        )),
                      );
                    },

                    ),
                  )),
                   SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:isColor==null?Colors.grey.shade300:Colors.white,
                          borderRadius:  const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration:  BoxDecoration(
                  color: isColor==null? Styles.orangeColor:Colors.white,
                  borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("14 Feb", style: isColor==null?Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3),
                          const Gap(5),
                          Text("Date",  style:isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle3,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("08:00 AM", style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3,),
                          const Gap(5),
                          Text("Depurenment time", style:isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("23", style:isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3,),
                          const Gap(5),
                          Text("may", style: isColor==null?Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4,)
                        ],
                      ),
                    ],
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
