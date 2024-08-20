import 'package:earn_app/AppColor.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          height: 100,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColor.kMain,
                radius: 20,
                child: const Icon(Icons.done_outline_rounded),
              ),
              const SizedBox(width: 15),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Withdrawal of 1000", style: TextStyle(fontSize: 18)),
                    Text("ID : 238rt32gr8732b7b327",
                        style: TextStyle(fontSize: 13)),
                    Text("Date : 2023-3-22 | 1:54:19 PM",
                        style: TextStyle(fontSize: 13)),
                  ],
                ),
              ),
              Text("₹ 1000",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.green.shade500,
                      fontWeight: FontWeight.bold)),
            ],
          )),
    );
  }
}
