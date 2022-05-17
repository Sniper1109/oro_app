part of 'gold_appointment_bloc.dart';

@immutable
abstract class GoldAppointmentEvent {}

class FetchOTP extends GoldAppointmentEvent {
  final String otp;
  FetchOTP(this.otp);
}

class VerifyPartner extends GoldAppointmentEvent {
  final int otp;
  VerifyPartner(this.otp);
}

class FetchJewelleryData extends GoldAppointmentEvent {

}

class FetchGoldLoanPlanData extends GoldAppointmentEvent {

}

class FetchTransactionData extends GoldAppointmentEvent {

}
