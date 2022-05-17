import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:oro/bloc/goldAppointmentBloc/gold_appointment_bloc.dart';
import 'package:oro/components/action_button.dart';
import 'package:oro/components/loan_step_header.dart';
import 'package:oro/screens/gold_loan_plan.dart';
import 'package:oro/screens/verify_otp.dart';
import 'gold_valuation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  var currentStep = 1;

  @override
  void initState() {
    super.initState();
  }

  void _verifyOtpBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        // <= set preferable radius.
        builder: (BuildContext bct) {
          return const VerifyOtpScreen();
        }).whenComplete(() {
      setState(() {
        currentStep = 2;
      });
    });
  }

  void _goldValuationBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: const Color(0xFFF8F8F8),
        context: context,
        builder: (BuildContext bct) {
          return const SafeArea(child: GoldValuationScreen());
        }).whenComplete(() {
      setState(() {
        currentStep = 3;
      });
    });
  }

  void _goldLoanPlanBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: const Color(0xFFF8F8F8),
        context: context,
        builder: (BuildContext bct) {
          return const SafeArea(child: GoldLoanPlanScreen());
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldAppointmentBloc, GoldAppointmentState>(
    builder: (context, state) {
      if(state is OtpFailureState){
       log("OTP Error-->${state.error}");
      }
      return Scaffold(
        backgroundColor: const Color(0xFFF8F8F8),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            color: const Color(0xFFF8F8F8),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Oro Gold Loan Appointment",
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700)),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: const Text(
                                "Loan taken in the same doorstep visit will be grouped together.",
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 14,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                // Steps View
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        //Info
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(right: 16),
                                child: Image.asset(
                                  "assets/images/loan_icon.png",
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("APPRAISAL PARTNER",
                                        style: TextStyle(
                                            fontSize: 12, fontFamily: 'Nunito')),
                                    Container(
                                      padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                      child: const Text(
                                        "Datchina Moorthi S",
                                        maxLines: 1,
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.visible,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 25,
                                width: 2,
                                color: Colors.yellow,
                                margin:
                                const EdgeInsets.symmetric(horizontal: 16),
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("VISIT ID",
                                        style: TextStyle(
                                          fontFamily: 'Nunito',
                                          fontSize: 12,
                                        )),
                                    Container(
                                      padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                      child: const Text(
                                        "OMV00023",
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.visible,
                                        style: TextStyle(
                                            fontFamily: 'Nunito',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Title
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: const Text(
                              "3 Simple Steps to get your Gold Loan",
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.visible,
                              style: TextStyle(fontFamily: 'Nunito', fontSize: 14, color: Colors.grey),
                            ),
                          ),
                        ),

                        //Steps View
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Step 1
                              LoanStepHeader(
                                  icon: "assets/images/users.png",
                                  currentStep: currentStep,
                                  title: "STEP 1",
                                  desc: "Appraisal Partner Verification",
                                  completed: currentStep > 1 ? true : false,
                                  isPending: currentStep < 1 ? true : false,
                                  showStatus: true,
                                  showProgress: true),
                              //Step 2
                              LoanStepHeader(
                                  icon: "assets/images/frame_339.png",
                                  currentStep: currentStep,
                                  title: "STEP 2",
                                  desc: "Gold Valuation",
                                  completed: currentStep > 2 ? true : false,
                                  isPending: currentStep < 2 ? true : false,
                                  showStatus: true,
                                  showProgress: true),
                              //Step 3
                              LoanStepHeader(
                                icon: "assets/images/cash_outline.png",
                                currentStep: currentStep,
                                title: "STEP 3",
                                desc: "Choose Plan & Get Funds",
                                completed: currentStep > 3 ? true : false,
                                isPending: currentStep < 3 ? true : false,
                                showStatus: true,
                                showProgress: false,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Action Button
                ActionButton(
                  title: currentStep == 1
                      ? 'Verify Appraisal Partner'
                      : currentStep == 2
                      ? 'Review Gold Valuation'
                      : 'Choose Plan & Get Funds',
                  onPress: () {
                    if (currentStep == 1) {
                      context
                          .read<GoldAppointmentBloc>()
                          .add(FetchOTP(""));
                      _verifyOtpBottomSheet(context);
                    } else if (currentStep == 2) {
                      context.read<GoldAppointmentBloc>().add(FetchJewelleryData());
                      _goldValuationBottomSheet(context);
                    } else if (currentStep == 3) {
                      context.read<GoldAppointmentBloc>().add(FetchGoldLoanPlanData());
                      _goldLoanPlanBottomSheet(context);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      );
    });
    }

}
