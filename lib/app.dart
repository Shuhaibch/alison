import 'package:alison/core/utils/color/colors.dart';
import 'package:alison/core/utils/theme/theme.dart';
import 'package:alison/features/home/presentation/bloc/home_bloc.dart';
import 'package:alison/features/home/presentation/screen/home_screen.dart';
import 'package:alison/init_depentancies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => serviceLocator<HomeBloc>()..add(GetHomeDataEvent()),
      child: MaterialApp(
        color: CColors.whiteColor,
        debugShowCheckedModeBanner: false,
        title: 'Alison',
        themeMode: ThemeMode.system,
        theme: CAppTheme.lightTheme,
        home: const SafeArea(
          child: HomeScreen(),
        ),
      ),
    );
  }
}
