class DebtModel {
  String name;
  String payment;
  String image;
  DebtModel({
    required this.name,
    required this.payment,
    required this.image,
  });
}

List<DebtModel> debtList = [
  DebtModel(name: 'David', payment: '435.08', image: 'assets/user2.jpg'),
  DebtModel(name: 'David', payment: '435.08', image: 'assets/user3.jpg'),
  DebtModel(name: 'David', payment: '435.08', image: 'assets/user4.jpg'),
];
