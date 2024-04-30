import 'package:flutter/material.dart';
import 'package:realworldflutterbloc/app.dart';
import 'package:realworldflutterbloc/layout/cubit/nav_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => NavCubit(),
      child: const RealwordDemoApp(),
    ),
  );
}
