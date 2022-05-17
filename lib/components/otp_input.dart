import 'package:flutter/material.dart';
import 'package:oro/bloc/goldAppointmentBloc/gold_appointment_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OTPInput extends StatelessWidget {
  final ValueChanged<String>? onSubmitted;

  const OTPInput({Key? key, this.onSubmitted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldAppointmentBloc, GoldAppointmentState>(
        builder: (context, state) {
      if (state is FetchPartnerOTP) {
        return TextField(
          maxLength: 1,
          cursorColor: Colors.grey,
          textAlign: TextAlign.center,
          keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
          textInputAction: TextInputAction.go,
          onChanged: (value) {
            context
                .read<GoldAppointmentBloc>()
                .add(FetchOTP("${state.result}$value"));
          },
          onSubmitted: (value) {
            onSubmitted?.call(state.result);
          },
          style: const TextStyle(
              fontFamily: 'Nunito',
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFAA07)),
          decoration: const InputDecoration(
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            counterText: "",
          ),
        );
      }
      return Container();
    });
  }
}

typedef ValueChanged<T> = void Function(T value);
