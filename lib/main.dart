import 'package:flutter/material.dart';
import 'package:home_credit_clients/home/views/home_view.dart';

void main() => {
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomeView(),
        },
      ))
    };
