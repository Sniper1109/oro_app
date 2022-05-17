import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:oro/bloc/goldAppointmentBloc/gold_appointment_bloc.dart';
import 'package:oro/components/action_button.dart';
import 'package:oro/models/plan_model.dart';
import 'package:oro/screens/transaction_success.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoldLoanPlanList extends StatelessWidget {
  final List<PlanDataModelResponse> plans;

  const GoldLoanPlanList({Key? key, required this.plans}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: plans.length,
      padding: const EdgeInsets.all(10),
      itemBuilder: (BuildContext context, int index) {
        var item = plans[index];
        return GestureDetector(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: const Color(0xFFFFC351), width: 1)),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Zero Tension",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: const TextSpan(
                                    text: 'Pay After ',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 14,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '6',
                                          style: TextStyle(
                                              fontFamily: 'Nunito',
                                              color: Color(0xFFFFC351),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700)),
                                      TextSpan(
                                          text: ' Months',
                                          style: TextStyle(
                                              fontFamily: 'Nunito',
                                              color: Color(0xFFFFC351),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: '1.00 ',
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 25,
                                      color: Color(0xFFFFC351),
                                      fontWeight: FontWeight.w700),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '%',
                                        style: TextStyle(
                                            fontFamily: 'Nunito',
                                            fontSize: 16,
                                            color: Color(0xFFFFC351),
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                textAlign: TextAlign.start,
                              ),
                              RichText(
                                text: const TextSpan(
                                  text: '(12.00% ',
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 14,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Per Annum',
                                      style: TextStyle(
                                        fontFamily: 'Nunito',
                                        color: Colors.black,
                                        fontSize: 10,
                                      ),
                                    ),
                                    TextSpan(
                                        text: ')',
                                        style: TextStyle(
                                          fontFamily: 'Nunito',
                                          color: Colors.black,
                                          fontSize: 14,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      //Divider
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 2,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.white,
                                      Color(0xFFFFC351),
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

                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF7EA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Image.asset(
                                "assets/images/rupee.png",
                                fit: BoxFit.contain,
                                width: 30,
                                height: 30,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Max Eligible Amount",
                                    // ignore: prefer_const_literals_to_create_immutables
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Text(
                                    "₹7,00,000",
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 2,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              height: 20,
                              color: const Color(0xFFFFC351),
                            ),
                            Expanded(
                              flex: 4,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Per Gram Rate",
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Text(
                                    "₹3,667",
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //Divider
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            fit: BoxFit.contain,
                            width: 24,
                            height: 24,
                          ),
                          Expanded(
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 2,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFFFC351),
                                      Colors.white,
                                    ],
                                    begin: FractionalOffset(0.0, 0.0),
                                    end: FractionalOffset(1.0, 0.0),
                                    stops: [0.0, 1.0],
                                    tileMode: TileMode.clamp),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Text(
                        "Interest if payment is defaulted by".toUpperCase(),
                        style: const TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12,
                            color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "0 - 30 Days".toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 10,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  "0.89%",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 18,
                                      color: Color(0xFFFFC351)),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Per Month".toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 9,
                                      color: Colors.black54),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "(10.68% P.A)".toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 20,
                            color: const Color(0xFFFFC351),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "31 - 60 Days".toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 10,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  "1.49%",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 18,
                                      color: Color(0xFFFFC351)),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Per Month".toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 9,
                                      color: Colors.black54),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "(17.88% P.A)".toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 20,
                            color: const Color(0xFFFFC351),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "61 - 180 Days".toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 10,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  "1.83%",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 18,
                                      color: Color(0xFFFFC351)),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Per Month".toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 9,
                                      color: Colors.black54),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "(21.96% P.A)".toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),

                      //Divider
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 2,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.white,
                                      Color(0xFFFFC351),
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

                      DottedBorder(
                        borderType: BorderType.RRect,
                        color: const Color(0xFFFFC351),
                        dashPattern: [10, 2],
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            const Text(
                              "Enjoy Cashback",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'upto ₹${item.cashback} ',
                                style: const TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 25,
                                  color: Color(0xFFFFC351),
                                  fontWeight: FontWeight.w700,
                                ),
                                children: <TextSpan>[
                                  const TextSpan(
                                      text: 'extra',
                                      style: TextStyle(
                                        fontFamily: 'Nunito',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              "On Every Interest Payments".toUpperCase(),
                              style: const TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 11,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      ActionButton(
                        title: 'Select this Plan',
                        onPress: () {
                          context
                              .read<GoldAppointmentBloc>()
                              .add(FetchTransactionData());
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const TransactionSuccessScreen()),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 20,
                  width: 90,
                  color: const Color(0xFFF9BA48),
                  child: Align(
                    child: Text(
                      "Recommended".toUpperCase(),
                      style: const TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
