import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../model/payment_request.dart';
import 'add_payment_request_card.dart';
import 'payment_request_card.dart';

class YourBalanceView extends StatelessWidget {
  final VoidCallback swapCallback;
  const YourBalanceView({super.key, required this.swapCallback});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.grey.withOpacity(0.1),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Container(
                height: 220,
                width: double.maxFinite,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(colors: [
                      Colors.lightBlueAccent,
                      Colors.blueAccent,
                      Colors.blue
                    ])),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("0200 0762 0876 9087 768",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      const SizedBox(height: 20),
                      const Text("YOUR BALANCE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 10),
                      const Text("\$ 5476.06",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 40),
                      SmoothPageIndicator(
                          controller: PageController(),
                          count: 3,
                          effect: const ExpandingDotsEffect(
                              activeDotColor: Colors.white, dotHeight: 5),
                          onDotClicked: (index) {})
                    ]),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text("INCOME", style: TextStyle(fontSize: 14)),
                        Text(
                          "\$ 45607",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: swapCallback,
                          icon: Icon(
                            Icons.swap_horiz_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: const [
                        Text("SPENT"),
                        Text(
                          "\$ 25607",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text("Your Payment Request",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 78,
          child: ListView.separated(
              itemCount: paymentRequestList.length + 1,
              padding: const EdgeInsets.only(left: 24),
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const AddPaymentRequest();
                }
                PaymentRequest paymentRequest = paymentRequestList[index - 1];
                return PaymentRequestCard(
                  paymentRequest: paymentRequest,
                );
              }),
        ),
      ],
    );
  }
}
