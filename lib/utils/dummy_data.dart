import '../app/models/question.dart';

class DummyData {
  static final List<Question> questions = [
    Question(
      ["Machine learning causes global warming", "Unsecure networks lead to terrorist attacks", "NFTs contribute to poaching of animals"],
      "Blockchains can use a lot of energy",
      "What is one potential environmental concern about Web 3.0?",
    ),
    Question(
      ["Paying someone through PayPal", "Buying something on Amazon.com", "Taking a screenshot of an NFT"],
      "Sending Bitcoin to someone else",
      "Which of the following is an example of a trustless transaction that takes place on Web 3.0?",
    )
  ];
}
