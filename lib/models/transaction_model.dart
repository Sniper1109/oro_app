Map<String, dynamic> transactionData = {
  "response": [
    {
      "amount": 100000,
      "id": "  FEDR5324685741",
      "mode": "IMPS",
    },
    {
      "amount": 15000,
      "id": "  FEDR8569742596",
      "mode": "IMPS",
    },
  ]
};

class TransactionModel {
  TransactionModel({
    required this.response,
  });

  final List<TransactionModelResponse> response;

  factory TransactionModel.fromMap(Map<String, dynamic> json) =>
      TransactionModel(
        response: List<TransactionModelResponse>.from(
            json["response"].map((x) => TransactionModelResponse.fromMap(x))),
      );
}

class TransactionModelResponse {
  TransactionModelResponse({
    required this.amount,
    required this.id,
    required this.mode,
  });

  final int amount;
  final String id;
  final String mode;

  factory TransactionModelResponse.fromMap(Map<String, dynamic> json) =>
      TransactionModelResponse(
        amount: json["amount"],
        id: json["id"],
        mode: json["mode"],
      );
}
