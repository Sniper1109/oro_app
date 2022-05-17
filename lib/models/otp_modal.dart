Map<String, dynamic> getOtp = {
  "otp": 1234,
};

class OTPModel {
  OTPModel({
    required this.response,
  });

  final List<OTPModelResponse> response;

  factory OTPModel.fromMap(Map<String, dynamic> json) => OTPModel(
        response: List<OTPModelResponse>.from(
            json["payload"].map((x) => OTPModelResponse.fromMap(x))),
      );
}

class OTPModelResponse {
  OTPModelResponse({
    required this.otp,
  });

  final int otp;

  factory OTPModelResponse.fromMap(Map<String, dynamic> json) =>
      OTPModelResponse(
        otp: json["otp"],
      );
}
