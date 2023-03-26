class PaymentRequest {
  String name;
  String image;
  PaymentRequest({
    required this.name,
    required this.image,
  });
}

List<PaymentRequest> paymentRequestList = [
  PaymentRequest(name: 'David', image: 'assets/user2.jpg'),
  PaymentRequest(name: 'Michael', image: 'assets/user3.jpg'),
  PaymentRequest(name: 'Smith', image: 'assets/user4.jpg'),
];
