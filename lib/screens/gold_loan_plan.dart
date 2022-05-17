import 'package:flutter/material.dart';
import 'package:oro/bloc/goldAppointmentBloc/gold_appointment_bloc.dart';
import 'package:oro/components/loan_step_header.dart';
import 'package:oro/components/step_counter.dart';
import 'package:oro/listview/gold_loan_plan_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoldLoanPlanScreen extends StatelessWidget {
  const GoldLoanPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldAppointmentBloc, GoldAppointmentState>(
        builder: (context, state) {
      if (state is GoldLoanPlanLoaded) {
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
                  icon: "assets/images/cash_outline.png",
                  currentStep: 3,
                  title: "STEP 3 OF 3",
                  desc: "Choose a Gold Loan Plan",
                  completed: false,
                  isPending: false,
                  showStatus: false,
                  showProgress: false),
            ),
            //step counter
            StepCounter(width: MediaQuery.of(context).size.width * 0.9),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xFFFFC351), width: 1)),
                      child: Text(
                        "Recommended".toUpperCase(),
                        style: const TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFC351),
                            fontSize: 12),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Pay Monthly".toUpperCase(),
                        style: const TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 12),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Pay After 6 Months".toUpperCase(),
                        style: const TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
            ),

            //List view
            Expanded(
              child: GoldLoanPlanList(
                plans: state.plans,
              ),
            ),
          ],
        );
      }
      return Container();
    });
  }
}
