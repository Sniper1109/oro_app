import 'package:flutter/material.dart';
import 'package:oro/models/jewel_model.dart';


class GoldItemsList extends StatelessWidget {
  final List<JewelleryModelResponse> jewelDataList;
  const GoldItemsList({
    Key? key,
    required this.jewelDataList
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: jewelDataList.length,
      padding: const EdgeInsets.all(10),
      itemBuilder: (BuildContext context, int index) {
        final item = jewelDataList[index];
        return GestureDetector(
          child: Stack(
            children: [
              Positioned(
                top: 30,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.all(10),
                ),
              ),
              Positioned(
                child: Container(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFFFF7ea),
                                    Color(0xFFFFFFFF),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  tileMode: TileMode.clamp),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(40),
                              ),
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                item.image,
                                height: 80,
                                width: 80,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Quantity".toUpperCase(),
                                style: const TextStyle(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: Colors.grey),
                              ),
                              const Divider(
                                height: 5,
                                color: Colors.white,
                              ),
                              const Text(
                                "02",
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Quality".toUpperCase(),
                                style: const TextStyle(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: Colors.grey),
                              ),
                              const Divider(
                                height: 5,
                                color: Colors.white,
                              ),
                              const Text(
                                "22 carat",
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Colors.yellow.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  "View Images",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Text(
                            item.type,
                            style: const TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 16,
                                color: Color(0xFFF9cA36),
                                fontWeight: FontWeight.w500),
                          ),
                          Expanded(
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 2,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.white,
                                      Color(0xFFF8B830),
                                    ],
                                    begin: FractionalOffset(0.0, 0.0),
                                    end: FractionalOffset(1.0, 0.0),
                                    stops: [0.0, 1.0],
                                    tileMode: TileMode.clamp),
                              ),
                            ),
                          ),
                          Image.asset(
                            "assets/images/logo.png",
                            fit: BoxFit.contain,
                            width: 24,
                            height: 24,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      //Details
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gross Weight".toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: Colors.grey),
                                ),
                                const Divider(
                                  height: 5,
                                  color: Colors.white,
                                ),
                                const Text(
                                  "150 grams",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Stone Weight".toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: Colors.grey),
                                ),
                                const Divider(
                                  height: 5,
                                  color: Colors.white,
                                ),
                                const Text(
                                  "30 grams",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Net Weight / ANW".toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: Colors.grey),
                                ),
                                const Divider(
                                  height: 5,
                                  color: Colors.white,
                                ),
                                const Text(
                                  "4g / 4g",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
