part of 'gold_appointment_bloc.dart';

@immutable
abstract class GoldAppointmentState {}

class GoldAppointmentInitial extends GoldAppointmentState {}

class FetchPartnerOTP extends GoldAppointmentState {
  final String result;

  FetchPartnerOTP(this.result);
}

class VerifyPartnerOTP extends GoldAppointmentState {
  final bool result;

  VerifyPartnerOTP(this.result);
}

class OtpFailureState extends GoldAppointmentState {
  final String error;

  OtpFailureState(this.error);
}

class JewelDataLoaded extends GoldAppointmentState {
  final List<JewelleryModelResponse> jewelDataList;

  JewelDataLoaded(this.jewelDataList);
}

class GoldLoanPlanLoaded extends GoldAppointmentState {
  final List<PlanDataModelResponse> plans;

  GoldLoanPlanLoaded(this.plans);
}

class TransactionLoaded extends GoldAppointmentState {
  final List<TransactionModelResponse> transactions;

  TransactionLoaded(this.transactions);
}
