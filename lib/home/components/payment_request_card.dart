import 'package:book_keeping_app/model/payment_request.dart';
import 'package:flutter/material.dart';

class PaymentRequestCard extends StatelessWidget {
  final PaymentRequest paymentRequest;
  const PaymentRequestCard({
    Key? key,
    required this.paymentRequest,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(paymentRequest.image),
        ),
        Text(paymentRequest.name)
      ],
    );
  }
}
