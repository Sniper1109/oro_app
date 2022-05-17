Map<String, dynamic> planData = {
  "response": [
    {
      "type": "Zero Tension",
      "payAfterMonth": 6,
      "interestPA": 12.0,
      "maxEligibleAmount": 700000.00,
      "perGramRate": 3667.0,
      "defaulterInterest": [
        {
          "days": "0-30",
          "interest": 0.89,
        },
        {
          "days": "31-60",
          "interest": 1.49,
        },
        {
          "days": "61-180",
          "interest": 1.83,
        }
      ],
      "cashback": 500
    },
    {
      "type": "Zero Tension",
      "payAfterMonth": 3,
      "interestPA": 10.0,
      "maxEligibleAmount": 700000.00,
      "perGramRate": 3667.0,
      "defaulterInterest": [
        {
          "days": "0-30",
          "interest": 0.89,
        },
        {
          "days": "31-60",
          "interest": 1.49,
        },
        {
          "days": "61-180",
          "interest": 1.83,
        }
      ],
      "cashback": 2000
    }
  ]
};

class PlanDataModel {
  PlanDataModel({
    required this.response,
  });

  final List<PlanDataModelResponse> response;

  factory PlanDataModel.fromMap(Map<String, dynamic> json) => PlanDataModel(
        response: List<PlanDataModelResponse>.from(
            json["response"].map((x) => PlanDataModelResponse.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "response": List<dynamic>.from(response.map((x) => x.toMap())),
      };
}

class PlanDataModelResponse {
  PlanDataModelResponse({
    required this.type,
    required this.payAfterMonth,
    required this.interestPA,
    required this.maxEligibleAmount,
    required this.perGramRate,
    required this.defaulterInterest,
    required this.cashback,
  });

  final String type;
  final int payAfterMonth;
  final double interestPA;
  final double maxEligibleAmount;
  final double perGramRate;
  final List<DefaulterInterest> defaulterInterest;
  final int cashback;

  factory PlanDataModelResponse.fromMap(Map<String, dynamic> json) =>
      PlanDataModelResponse(
        type: json["type"],
        payAfterMonth: json["payAfterMonth"],
        interestPA: json["interestPA"],
        maxEligibleAmount: json["maxEligibleAmount"],
        perGramRate: json["perGramRate"],
        defaulterInterest: List<DefaulterInterest>.from(
            json["defaulterInterest"].map((x) => DefaulterInterest.fromMap(x))),
        cashback: json["cashback"],
      );

  Map<String, dynamic> toMap() => {
        "type": type,
        "payAfterMonth": payAfterMonth,
        "interestPA": interestPA,
        "maxEligibleAmount": maxEligibleAmount,
        "perGramRate": perGramRate,
        "defaulterInterest":
            List<dynamic>.from(defaulterInterest.map((x) => x.toMap())),
        "cashback": cashback,
      };
}

class DefaulterInterest {
  DefaulterInterest({
    required this.days,
    required this.interest,
  });

  final String days;
  final double interest;

  factory DefaulterInterest.fromMap(Map<String, dynamic> json) =>
      DefaulterInterest(
        days: json["days"],
        interest: json["interest"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "days": days,
        "interest": interest,
      };
}
