import 'package:flutter/material.dart';
import 'package:oro/screens/gold_appointment.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/goldAppointmentBloc/gold_appointment_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldAppointmentBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AppointmentScreen(),
      ),
    );
  }
}
