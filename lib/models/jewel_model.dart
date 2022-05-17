Map<String, dynamic> jewelleryData = {
  "response": [
    {
      "image": "assets/images/kaasu_maalai.png",
      "quantity": 02.0,
      "quality": 22.0,
      "grossWeight": 150.0,
      "type": "Necklace",
      "stoneWeight": 30.0,
      "netWeight": 4.0,
    },
    {
      "image": "assets/images/broad_bangle.png",
      "quantity": 02.0,
      "quality": 22.0,
      "grossWeight": 150.0,
      "type": "Bangle",
      "stoneWeight": 30.0,
      "netWeight": 4.0,
    },
    {
      "image": "assets/images/baby_finger_ring.png",
      "quantity": 02.0,
      "quality": 22.0,
      "grossWeight": 150.0,
      "type": "Ring",
      "stoneWeight": 30.0,
      "netWeight": 4.0,
    },
  ]
};

class JewelleryModel {
  JewelleryModel({
    required this.response,
  });

  final List<JewelleryModelResponse> response;

  factory JewelleryModel.fromMap(Map<String, dynamic> json) => JewelleryModel(
        response: List<JewelleryModelResponse>.from(
            json["response"].map((x) => JewelleryModelResponse.fromMap(x))),
      );
}

class JewelleryModelResponse {
  JewelleryModelResponse({
    required this.type,
    required this.image,
    required this.quantity,
    required this.quality,
    required this.grossWeight,
    required this.stoneWeight,
    required this.netWeight,
  });

  final String type;
  final String image;
  final double quantity;
  final double quality;
  final double grossWeight;
  final double stoneWeight;
  final double netWeight;

  factory JewelleryModelResponse.fromMap(Map<String, dynamic> json) => JewelleryModelResponse(
        type: json["type"],
        image: json["image"],
        quantity: json["quantity"],
        quality: json["quality"],
        grossWeight: json["grossWeight"],
        stoneWeight: json["stoneWeight"],
        netWeight: json["netWeight"],
      );
}
