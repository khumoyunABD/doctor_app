import 'package:doctor_app/presentation/home/appbar.dart';
import 'package:doctor_app/presentation/home/categories_vertical.dart';
import 'package:doctor_app/presentation/home/doctors_list.dart';
import 'package:doctor_app/presentation/home/search_field.dart';
import 'package:doctor_app/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: getRelativeHeight(0.85),
            child: Column(
              children: [
                SizedBox(height: getRelativeHeight(0.025)),
                const DoctorAppBar(),
                // SizedBox(height: getRelativeHeight(0.015)),
                // const DoctorBanner(),
                SizedBox(height: getRelativeHeight(0.015)),
                SearchField(),
                SizedBox(height: getRelativeHeight(0.025)),
                const CategoriesVertical(),
                SizedBox(height: getRelativeHeight(0.01)),
                const DoctorsList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
