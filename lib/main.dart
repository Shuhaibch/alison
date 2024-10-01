import 'package:alison/app.dart';
import 'package:alison/init_depentancies.dart';
import 'package:alison/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}
