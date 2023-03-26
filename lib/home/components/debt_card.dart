import 'package:book_keeping_app/model/debt_model.dart';
import 'package:flutter/material.dart';

class DebtCard extends StatelessWidget {
  final DebtModel debt;
  const DebtCard({super.key, required this.debt});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      leading: CircleAvatar(
        backgroundImage: AssetImage(debt.image),
      ),
      title: Text(debt.name, style:const  TextStyle(fontSize: 14)),
      subtitle: Text("\$ ${debt.payment}",
          style: const TextStyle(
              fontSize: 14, color: Colors.red, fontWeight: FontWeight.w500)),
      trailing: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(25)),
        child: Text("PAY", style: TextStyle(color: Colors.blue)),
      ),
    );
  }
}
