import 'package:flutter/material.dart';

class AddPaymentRequest extends StatelessWidget {
  const AddPaymentRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 65,
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue,width: 2),
          borderRadius: BorderRadius.circular(5)),
      child: Icon(Icons.add, color: Colors.blue),
    );
  }
}
