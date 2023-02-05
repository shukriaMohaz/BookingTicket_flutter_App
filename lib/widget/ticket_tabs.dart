import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class TicketTabs extends StatelessWidget {
  final String firtTab;
  final String secondTab;
  const TicketTabs({Key? key, required this.firtTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  FittedBox(
      child: Container(
          padding: EdgeInsets.all(3.5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
              color: const Color(0xFFF4F6FD)
          ),
          child: Row(

            children: [
              Container(
                width: size.width*.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50)),),
                  color:  Colors.white,
                ),
                child: Center(child: Text(firtTab),),
              ),
              Container(
                width: size.width*.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50)),),
                  color:  Colors.transparent,
                ),
                child: Center(child: Text(secondTab),),
              )
            ],
          )
      ),
    );
  }
}
