import 'package:flutter/material.dart';
import 'package:oro/bloc/goldAppointmentBloc/gold_appointment_bloc.dart';
import 'package:oro/components/action_button.dart';
import 'package:oro/listview/loan_transaction_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionSuccessScreen extends StatelessWidget {
  const TransactionSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldAppointmentBloc, GoldAppointmentState>(
        builder: (context, state) {
      if (state is TransactionLoaded) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Action Button
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          fit: BoxFit.contain,
                          width: 72,
                          height: 72,
                        ),
                        Image.asset(
                          "assets/images/checkmark_circle_outline.png",
                          fit: BoxFit.contain,
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Congratulations 🎉',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'Gold Loan Amount has been transferred to your bank account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Nunito",
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                color: const Color(0xFFFFE79B),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Transaction Details'.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Nunito",
                                    color: Colors.grey,
                                    letterSpacing: 5.0),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 1,
                                color: const Color(0xFFFFE79B),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const LoanTransactionList()
                      ],
                    ),
                  ),
                  ActionButton(
                    title: 'Manage Your Loan',
                    onPress: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
          ),
        );
      }
      return Container();
    });
  }
}
