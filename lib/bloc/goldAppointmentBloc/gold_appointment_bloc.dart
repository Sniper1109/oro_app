import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:oro/models/jewel_model.dart';
import 'package:oro/models/otp_modal.dart';
import 'package:oro/models/plan_model.dart';
import 'package:oro/models/transaction_model.dart';

part 'gold_appointment_event.dart';
part 'gold_appointment_state.dart';

class GoldAppointmentBloc
    extends Bloc<GoldAppointmentEvent, GoldAppointmentState> {
  GoldAppointmentBloc() : super(GoldAppointmentInitial()) {
    on<GoldAppointmentEvent>((event, emit) {
      if (event is FetchOTP) {
        emit(FetchPartnerOTP(event.otp));
      }
      if (event is VerifyPartner) {
        if (event.otp == (getOtp["otp"] as int)) {
          emit(VerifyPartnerOTP(true));
        } else {
          emit(OtpFailureState("Invalid OTP. Enter 1234."));
        }
      }
      if (event is FetchJewelleryData) {
        JewelleryModel listJewelData;
        listJewelData = JewelleryModel.fromMap(jewelleryData);
        emit(JewelDataLoaded(listJewelData.response));
      }

      if (event is FetchGoldLoanPlanData) {
        PlanDataModel plans;
        plans = PlanDataModel.fromMap(planData);
        emit(GoldLoanPlanLoaded(plans.response));
      }

      if (event is FetchTransactionData) {
        TransactionModel transaction;
        transaction = TransactionModel.fromMap(transactionData);
        emit(TransactionLoaded(transaction.response));
      }
    });
  }
}
