import 'package:flutter/material.dart';
import 'package:oro/bloc/goldAppointmentBloc/gold_appointment_bloc.dart';
import 'package:oro/components/action_button.dart';
import 'package:oro/components/loan_step_header.dart';
import 'package:oro/components/step_counter.dart';
import 'package:oro/listview/gold_items_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoldValuationScreen extends StatelessWidget {
  const GoldValuationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldAppointmentBloc, GoldAppointmentState>(
        builder: (context, state) {
      if (state is JewelDataLoaded) {
        return Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: LoanStepHeader(
                  icon: "assets/images/frame_339.png",
                  currentStep: 2,
                  title: "STEP 2 OF 3",
                  desc: "Gold Valuation",
                  completed: false,
                  isPending: false,
                  showStatus: false,
                  showProgress: false),
            ),
            //step counter
            StepCounter(width: MediaQuery.of(context).size.width * 2 / 3),
            //summary
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Valuation Summary".toUpperCase(),
                      style: const TextStyle(
                          fontFamily: 'Nunito',
                          color: Colors.grey,
                          fontSize: 14),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Gross Weight".toUpperCase(),
                                style: const TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey),
                              ),
                              const Divider(
                                height: 5,
                                color: Colors.white,
                              ),
                              const Text(
                                "230 grams",
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 20,
                          width: 2,
                          color: Colors.yellow,
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Deductions".toUpperCase(),
                                style: const TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
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
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 20,
                          width: 2,
                          color: Colors.yellow,
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Net Weight".toUpperCase(),
                                style: const TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey),
                              ),
                              const Divider(
                                height: 5,
                                color: Colors.white,
                              ),
                              const Text(
                                "200 grams",
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Valuation Details".toUpperCase(),
                      style: const TextStyle(
                          fontFamily: 'Nunito',
                          color: Colors.grey,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GoldItemsList(
                jewelDataList: state.jewelDataList,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: ActionButton(
                title: 'Approve My Jewels',
                onPress: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        );
      }
      return Container();
    });
  }
}
