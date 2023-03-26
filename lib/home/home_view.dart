import 'package:book_keeping_app/data/enums.dart';
import 'package:book_keeping_app/home/components/finger_print_view.dart';
import 'package:book_keeping_app/model/debt_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../landingPage/landing_page.dart';
import 'components/debt_card.dart';
import 'components/your_balance_view.dart';

class HomView extends StatefulWidget {
  const HomView({super.key});

  @override
  State<HomView> createState() => _HomViewState();
}

class _HomViewState extends State<HomView> {
  ScreenChangeEnum screen = ScreenChangeEnum.fingerPrint;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.3),
              child: const Icon(Icons.person, color: Colors.black),
            ),
          ),
          centerTitle: true,
          title: const Text("Hello David",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications, color: Colors.black))
          ],
        ),
        body: Column(
          children: [
            Container(
              child: screen == ScreenChangeEnum.fingerPrint
                  ? Expanded(
                    flex: 7,
                    child: FingerPrintView(
                        fingerPrintCallback: () {
                          setState(() {
                            screen = ScreenChangeEnum.balance;
                          });
                        },
                      ),
                  )
                  : YourBalanceView(
                      swapCallback: () {
                        setState(() {
                          screen = ScreenChangeEnum.fingerPrint;
                        });
                      },
                    ),
            ),
            const SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ListView(children: [
                  const Text(
                    "Who do I owe?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 20),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (ctx, index) {
                        return DebtCard(
                          debt: debtList[index],
                        );
                      },
                      itemCount: debtList.length)
                ]),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          backgroundColor: Colors.lightBlueAccent,
          child: Container(
            margin: const EdgeInsets.all(15.0),
            child: const Icon(Icons.camera_alt, color: Colors.blue),
          ),
        ),
        bottomNavigationBar: const CustomBottomBar(),
      ),
    );
  }
}
