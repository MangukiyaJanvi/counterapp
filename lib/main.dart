import 'package:counterapp/screen/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screen/view/counter_screen.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>CounterScreen(),
        },
      ),
    ),
  );
}