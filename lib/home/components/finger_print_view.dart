import 'package:flutter/material.dart';

import 'fingerprint_card.dart';

class FingerPrintView extends StatelessWidget {
  final VoidCallback fingerPrintCallback;
  const FingerPrintView({super.key, required this.fingerPrintCallback});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 7,
          child: Stack(
            children: [
              Positioned.fill(
                  bottom: 50,
                  right: 10,
                  left: 10,
                  top: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 24),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.lightBlueAccent,
                              Colors.white,
                            ])),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: fingerPrintCallback,
                            constraints: const BoxConstraints(),
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                                Icons.keyboard_arrow_up_rounded,
                                size: 35,
                                color: Colors.grey),
                          ),
                        ),
                        const FingerPrintCard(),
                        const SizedBox(height: 20),
                        const Text("Identity Check",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(height: 20),
                        const Text(
                          "Verify to access at\n Information",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )),
              Positioned(
                bottom: 20,
                right: 50,
                left: 50,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45)),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(45)),
                    child: TabBar(
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: Colors.blue,
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      tabs: const [
                        Tab(
                          text: 'LATER',
                        ),
                        Tab(
                          text: 'VERIFY',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}