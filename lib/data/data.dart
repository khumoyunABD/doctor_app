import 'package:doctor_app/models/category.dart';
import 'package:doctor_app/models/doctor.dart';
import 'package:line_icons/line_icons.dart';

class Data {
  static final categoriesList = [
    Category(
      title: "Heart",
      doctorsNumber: 15,
      icon: LineIcons.heartbeat,
    ),
    Category(
      title: "Dental",
      doctorsNumber: 8,
      icon: LineIcons.tooth,
    ),
    Category(
      title: "Kidney",
      doctorsNumber: 7,
      icon: LineIcons.kiwiBird,
    ),
    Category(
      title: "Eye",
      doctorsNumber: 10,
      icon: LineIcons.eye,
    ),
    Category(
      title: "Stomach",
      doctorsNumber: 15,
      icon: LineIcons.pooStorm,
    ),
    Category(
      title: "Lung",
      doctorsNumber: 8,
      icon: LineIcons.linux,
    ),
    Category(
      title: "Brain",
      doctorsNumber: 7,
      icon: LineIcons.brain,
    ),
    Category(
      title: "Liver",
      doctorsNumber: 10,
      icon: LineIcons.objectGroup,
    ),
  ];

  static final doctorsList = [
    Doctor(
      name: "Dr.Jawad",
      speciality: "Cardiology",
      image: "assets/images/doctor_1.png",
      reviews: 80,
      reviewScore: 4,
    ),
    Doctor(
      name: "Dr.Saba",
      speciality: "Dermatology",
      image: "assets/images/doctor_2.png",
      reviews: 67,
      reviewScore: 5,
    ),
    Doctor(
      name: "Dr.Irfan",
      speciality: "Ophthalmology",
      image: "assets/images/doctor_3.png",
      reviews: 19,
      reviewScore: 3,
    ),
  ];
}
