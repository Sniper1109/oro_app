import 'package:flutter/material.dart';
import 'package:oro/bloc/goldAppointmentBloc/gold_appointment_bloc.dart';
import 'package:oro/components/loan_step_header.dart';
import 'package:oro/components/otp_input.dart';
import 'package:oro/components/step_counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            //Slider button
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: MediaQuery.of(context).size.width * 0.4,
                height: 3,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            //Header
            const LoanStepHeader(
                icon: "assets/images/users.png",
                currentStep: 1,
                title: "STEP 1 OF 3",
                desc: "Appraisal Partner Verification",
                completed: false,
                isPending: false,
                showStatus: false,
                showProgress: false),

            const SizedBox(
              height: 10,
            ),
            //Step Counter
            StepCounter(width: MediaQuery.of(context).size.width * 0.3),
            //Profile details
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Confirm OTP Verification",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Oro Appraisal Partner".toUpperCase(),
                style: const TextStyle(
                    fontFamily: 'Nunito', color: Colors.grey, fontSize: 12),
              ),
            ),
            //Profile Image here
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [
                      Color(0xFFf9ca36),
                      Color(0xFFf8b830),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.clamp),
                borderRadius: BorderRadius.all(
                  Radius.circular(MediaQuery.of(context).size.width * 0.5),
                ),
                border: Border.all(color: const Color(0xFFf9ca36), width: 4),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.5),
                child: Image.network(
                  "https://cdn.justjared.com/wp-content/uploads/headlines/2022/05/celebrities-support-johnny-depp.jpg",
                  height: MediaQuery.of(context).size.width * 0.5,
                  width: MediaQuery.of(context).size.width * 0.5,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Text(
              "Datchina Moorthi S",
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Please share the 4 digit OTP to Oro Appraisal Partner to complete identity check.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Nunito', color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "OTP Code for verification".toUpperCase(),
              style: const TextStyle(
                  fontFamily: 'Nunito', color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(
              height: 24,
            ),

            //code input view
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 50,
                      child: OTPInput(),
                    ),
                  ),
                  Container(
                    height: 5,
                    width: 15,
                    color: Colors.grey,
                  ),
                  const Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 50,
                      child: OTPInput(),
                    ),
                  ),
                  Container(
                    height: 5,
                    width: 15,
                    color: Colors.grey,
                  ),
                  const Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 50,
                      child: OTPInput(),
                    ),
                  ),
                  Container(
                    height: 5,
                    width: 15,
                    color: Colors.grey,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 50,
                      child: OTPInput(onSubmitted: (value) {
                        context
                            .read<GoldAppointmentBloc>()
                            .add(VerifyPartner(int.parse(value)));
                        Navigator.pop(context);
                      }),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const Text(
                        "VISIT ID",
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            color: Colors.grey,
                            fontSize: 12),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "OMV00023",
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const Text(
                        "PARTNER ID",
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            color: Colors.grey,
                            fontSize: 12),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "OMA00001",
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
}
