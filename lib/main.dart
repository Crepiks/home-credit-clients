import 'package:flutter/material.dart';
import 'package:home_credit_clients/onboarding/views/onboarding_view.dart';

void main() => {
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const OnboardingView(),
        },
      ))
    };
