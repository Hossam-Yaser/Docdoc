bool isLoggedinUser = false;
bool isOnboardingSeen = false;
String? userName;

class SharedPrefKeys {
  static const String userToken = "userToken";
  static const String onboardingSeen = "onboardingSeen";
  static const String userName = "userName";
}

class PaymentMethod {
  static const creditCard = 'credit_card';
  static const bankTransfer = 'bank_transfer';
  static const paypal = 'paypal';
}

class CardType {
  static const masterCard = 'mastercard';
  static const amex = 'amex';
  static const capitalOne = 'capital_one';
  static const barclays = 'barclays';
}
